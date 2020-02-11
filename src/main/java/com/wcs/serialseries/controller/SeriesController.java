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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SeriesController {

	private final SerieRepository serieRepository;
	private final UserService service;

	@Autowired
	public SeriesController(SerieRepository serieRepository, UserService service) {
		this.serieRepository = serieRepository;
		this.service = service;
	}

	@GetMapping({ "/listMySeries", "/listAllSeries" })
	public String listSeries(Model model) {

		long userId = service.getCurrentLoggedInUserId();

		if (userId == 0) {
			model.addAttribute("Series", serieRepository.findAllByOrderByName());
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getEmptyTitle());

			return "listSeries.html";
		} else {
			List<Serie> series = serieRepository.findBySerieUsersUserIdOrderByName(userId);

			model.addAttribute("Series", series);
			model.addAttribute("Title", service.getTitleFromId(userId));
			model.addAttribute("Type", "My");
			model.addAttribute("UserId", userId);

			return "listSeries.html";
		}

	}

	@GetMapping("/listSearch/{search}")
	public String listSeriesSearch(Model model, @PathVariable String search) {

		long userId = service.getCurrentLoggedInUserId();

		if (userId == 0) {
			if (search == null || search.isEmpty())
				model.addAttribute("Series", serieRepository.findAllByOrderByName());
			else
				model.addAttribute("Series", serieRepository.findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(search, search, search));
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getEmptyTitle());
			model.addAttribute("Search", search);

			return "listSeries.html";
		} else {
			if (search == null || search.isEmpty())
				model.addAttribute("Series", serieRepository.findBySerieUsersUserIdOrderByName(userId));
			else {
				List<Serie> series = serieRepository.findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(search, search, search);
				series = service.removeNotMySeries(series, userId);
				model.addAttribute("Series", series);
			}

			model.addAttribute("Title", service.getTitleFromId(userId));
			model.addAttribute("Type", "My");
			model.addAttribute("UserId", userId);

			return "listSeries.html";
		}
	}

	@GetMapping("/listSearch")
	public String listSeriesEmptySearch(Model model) {

		long userId = service.getCurrentLoggedInUserId();

		if (userId == 0) {
			model.addAttribute("Series", serieRepository.findAllByOrderByName());
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getEmptyTitle());

		} else {
			model.addAttribute("Series", serieRepository.findBySerieUsersUserId(userId));
			model.addAttribute("Title", service.getTitleFromId(userId));
			model.addAttribute("Type", "My");
			model.addAttribute("UserId", userId);
		}
		if (userId == 0)
			return "redirect:/listAllSeries";
		else
			return "redirect:/listMySeries";
	}
	

	@GetMapping("/listSeries/New")
	public String listNewSeriesForUserId(Model model) {

		long userId = service.getCurrentLoggedInUserId();

		List<Serie> series = serieRepository.findAllByOrderByName();

		if (userId == 0) {

			model.addAttribute("Series", series);
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getEmptyTitle());

			return "listSeries.html";
		} else {
			series = service.removeMySeries(series, userId);

			model.addAttribute("Series", series);
			model.addAttribute("Title", service.getTitleFromId(userId));
			model.addAttribute("Type", "New");
			model.addAttribute("UserId", userId);

			return "listSeries.html";
		}
	}

	@PostMapping("/listSearch")
	public String postSearch(@RequestParam(value = "Search", required = false) String search) {
		return "redirect:/listSearch/" + search;
	}
}
