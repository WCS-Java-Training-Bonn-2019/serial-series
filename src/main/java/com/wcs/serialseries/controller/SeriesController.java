package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;

import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class SeriesController {

	private final SerieRepository serieRepository;
	private final UserService service;

	@Autowired
	public SeriesController(SerieRepository serieRepository, UserService service) {
		this.serieRepository = serieRepository;
		this.service = service;
	}

	@GetMapping("/listSeries")
	public String listSeries(Model model) {

		model.addAttribute("Series", serieRepository.findAllByOrderByName());
		model.addAttribute("Type", "All");
		model.addAttribute("Title", service.getEmptyTitle());

		return "listSeries.html";
	}

	@GetMapping("/listSeries/{userId}")
	public String listSeriesForUserId(@PathVariable long userId, Model model) {

		List<Serie> series = serieRepository.findBySerieUsersUserIdOrderByName(userId);

		model.addAttribute("Series", series);
		model.addAttribute("Title", service.getTitleFromId(userId));
		model.addAttribute("Type", "My");
		model.addAttribute("UserId", userId);

		return "listSeries.html";
	}

	@GetMapping("/listSeries/New/{userId}")
	public String listNewSeriesForUserId(@PathVariable long userId, Model model) {

		List<Serie> series = serieRepository.findAllByOrderByName();

		// WHERE-Bedingung: Alle Serien, die noch nicht im Portfolio vorhanden sind
		int i = 0;
		while (i < series.size()) {
			List<SerieUser> serieUser = series.get(i).getSerieUsers();
			int y = 0;
			while (y < serieUser.size()) {
				if (serieUser.get(y).getUser().getId() == userId) {
					series.remove(i);
					i--;

				}
				y++;
			}
			i++;
		}

		model.addAttribute("Series", series);
		model.addAttribute("Title", service.getTitleFromId(userId));
		model.addAttribute("Type", "New");
		model.addAttribute("UserId", userId);

		return "listSeries.html";
	}

}
