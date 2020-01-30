package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.EpisodeRepository;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.UserRepository;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class SeriesController {

	@Autowired
	private SerieRepository serieRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	
	@GetMapping("/listSeries")
	public String listSeries(Model model) {

		model.addAttribute("Series", serieRepository.findAllByOrderByName());
		model.addAttribute("Type", "All");
		model.addAttribute("Title", "Serial-Series");

		return "listSeries.html";
	}


	@GetMapping("/listSeries/{userId}")
	public String listSeriesForUserId(@PathVariable long userId, Model model) {

		List<Serie> series = serieRepository.findBySerieUsersUserIdOrderByName(userId);

		model.addAttribute("Series", series);
		model.addAttribute("Title", getTitleFromId(userId));
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
		model.addAttribute("Title", getTitleFromId(userId));
		model.addAttribute("Type", "New");
		model.addAttribute("UserId", userId);

		return "listSeries.html";
	}
	
	
	@GetMapping("/listSerieSeasonsEpisodes/{serieId}")
	public String showSerie(@PathVariable long serieId, Model model) {
		Optional<Serie> optionalSerie = serieRepository.findById(serieId);
		if (optionalSerie.isPresent()) {
			model.addAttribute("Serie", optionalSerie.get());
			return "listSerieWithSeasonsAndEpisodes.html";
		} else {
			return "listSeries.html";
		} 	
		
	}
	

	String getTitleFromId(long userId) {

		Optional<User> optionalUser = userRepository.findById(userId);
		if (optionalUser.isPresent()) {
			return ("Serial-Series - "+ optionalUser.get().getName());
		} else {
			return "Serial-Series";
		} 
			
		
	}

}
