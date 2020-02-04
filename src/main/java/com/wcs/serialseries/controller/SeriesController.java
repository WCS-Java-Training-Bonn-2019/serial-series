package com.wcs.serialseries.controller;

import com.wcs.serialseries.form.FormEpisode;
import com.wcs.serialseries.form.FormSeason;
import com.wcs.serialseries.form.FormSerie;

import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.SerieUserEpisode;
import com.wcs.serialseries.model.User;

import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SeriesController {

	@Autowired
	private SerieRepository serieRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private SerieUserEpisodeRepository serieUserEpisodeRepository;
	
	
	@GetMapping("/listSeries")
	public String listSeries(Model model) {

		model.addAttribute("Series", serieRepository.findAllByOrderByName());
		model.addAttribute("Type", "All");
		model.addAttribute("Title", getEmptyTitle());

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
	
	
	@GetMapping("/listSerieSeasonsEpisodes/details")
	public String showSerie(@RequestParam long idUser, @RequestParam long idSerie, Model model) {
		
		Optional<Serie> optionalSerie = serieRepository.findById(idSerie);
		if (optionalSerie.isPresent()) {
			
			Serie serie = optionalSerie.get();
			
			//Form füllen
			
			List <FormSeason> formSeasons = new ArrayList<>();
			for (Season season : serie.getSeasons()) {
				List <FormEpisode> formEpisodes = new ArrayList<>();
				for (Episode episode : season.getEpisodes()) {
					SerieUserEpisode serieUserEpisode = serieUserEpisodeRepository.findByEpisodeId(episode.getId() );
					formEpisodes.add(new FormEpisode(episode.getId(), episode.getName(), serieUserEpisode.isWatched(), serieUserEpisode.isWanna_c(),serieUserEpisode.getRanking()));
				}
				formSeasons.add(new FormSeason(season.getId(), formEpisodes));
				
			}
			
			FormSerie formSerie = new FormSerie(serie.getId(), serie.getName(), serie.getPicture_url(), serie.getDescription(), formSeasons);

			
					
			model.addAttribute("Serie", formSerie);
			model.addAttribute("Title", getTitleFromId(idUser));
			model.addAttribute("Type", "Details");
			model.addAttribute("UserId", idUser);
			return "listSerieWithSeasonsAndEpisodes.html";
		} else {
			return "listSeries.html";
		} 	
		
	}
	

	String getTitleFromId(long userId) {

		Optional<User> optionalUser = userRepository.findById(userId);
		if (optionalUser.isPresent()) {
			return ("Serial-Series - "+ optionalUser.get().getName()+":     ");
		} else {
			return "Serial-Series:     ";
		} 
			
		
	}
	
	String getEmptyTitle() {
			return "Serial-Series:     ";
	
	}

}
