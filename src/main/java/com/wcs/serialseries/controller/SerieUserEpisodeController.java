package com.wcs.serialseries.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.form.FormEpisode;
import com.wcs.serialseries.form.FormSeason;
import com.wcs.serialseries.form.FormSerie;
import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.SerieUserEpisode;

import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class SerieUserEpisodeController {

	private final SerieRepository serieRepository;
	private final SerieUserRepository serieUserRepository;
	private final SerieUserEpisodeRepository serieUserEpisodeRepository;
	private final UserService service;

	@Autowired
	public SerieUserEpisodeController(SerieRepository serieRepository,
			SerieUserEpisodeRepository serieUserEpisodeRepository, SerieUserRepository serieUserRepository, UserService service) {
		this.serieRepository = serieRepository;
		this.serieUserEpisodeRepository = serieUserEpisodeRepository;
		this.serieUserRepository = serieUserRepository;
		this.service = service;
	}

	@GetMapping("/listSerieSeasonsEpisodes/details")
	public String showSerie(@RequestParam long idUser, @RequestParam long idSerie, Model model) {
		
		
		Optional<Serie> optionalSerie = serieRepository.findById(idSerie);
		if (optionalSerie.isPresent()) {

			Serie serie = optionalSerie.get();

			// Form füllen

			List<FormSeason> formSeasons = new ArrayList<>();
			for (Season season : serie.getSeasons()) {
				List<FormEpisode> formEpisodes = new ArrayList<>();
				for (Episode episode : season.getEpisodes()) {
					
					
					SerieUserEpisode serieUserEpisode = serieUserEpisodeRepository.findByEpisodeIdAndSerieUserId(episode.getId(),service.getSerieUserFromDB(idUser, idSerie));
					
					FormEpisode formEpisode = new FormEpisode();
					formEpisode.setId(episode.getId());
					formEpisode.setName(episode.getName());
					formEpisode.setWatched(serieUserEpisode.isWatched());
					formEpisode.setWanna_c(serieUserEpisode.isWanna_c());
					formEpisode.setRanking(serieUserEpisode.getRanking());
					formEpisodes.add(formEpisode);
				}
				
				FormSeason formSeason = new FormSeason();
				formSeason.setId(season.getId());
				formSeason.setSeason_Nr(season.getSeason_Nr());
				formSeason.setEpisodes(formEpisodes);
				formSeasons.add(formSeason);

			}

			FormSerie formSerie = new FormSerie();
			formSerie.setId(serie.getId());
			formSerie.setName(serie.getName());
			formSerie.setPicture_url(serie.getPicture_url());
			formSerie.setDescription(serie.getDescription());
			formSerie.setSeasons(formSeasons);
		

			model.addAttribute("Serie", formSerie);
			model.addAttribute("Title", service.getTitleFromId(idUser));
			model.addAttribute("Type", "Details");
			model.addAttribute("UserId", idUser);
			return "listSerieWithSeasonsAndEpisodes.html";
			
		} else {
			return "listSeries.html";
		}

	}

	@PostMapping("/listSerieSeasonsEpisodes")
	public String postStaffeln(@ModelAttribute("Serie") FormSerie formSerie,
			@RequestParam(value = "seen", required = false) int[] seen,
			@RequestParam(value = "wanted", required = false) int[] wanted,
			@RequestParam(value = "UserId", required = false) long idUser) {

			
		
			Serie serie = new Serie();
//			serie.setId(formSerie.getId());
//			serie.setName(formSerie.getName());
//			serie.setPicture_url(formSerie.getPicture_url());
//			serie.setDescription(formSerie.getDescription());
//			serie.setSeasons(null);
			
		
//			// Liste der gesehenen Folgen aktualisieren
//			if (seen != null) {
//				for (int ittChecked = 0; ittChecked < seen.length; ittChecked++) {
//					// Richtige Episode der richtigen Season der richtigen Serie auf gesehen setzen
//					// alle Staffeln itterieren
//					for (int ittStaffel = 0; ittStaffel < serie.getListOfSeasons().size(); ittStaffel++) {
//						// alle Folgen itterieren
//						for (int ittFolge = 0; ittFolge < serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes()
//								.size(); ittFolge++) {
//							// alle Folgen itterieren
//							if (seen[ittChecked] == serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).getId())
//								serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).setWatched(true);
//						}
//					}
//				}
//
//			}
//
//			// Liste der gewünschten Folgen aktualisieren
//			if (wanted != null) {
//				for (int ittChecked = 0; ittChecked < wanted.length; ittChecked++) {
//					// Richtige Episode der richtigen Season der richtigen Serie auf gesehen setzen
//					// alle Staffeln itterieren
//					for (int ittStaffel = 0; ittStaffel < serie.getListOfSeasons().size(); ittStaffel++) {
//						// alle Folgen itterieren
//						for (int ittFolge = 0; ittFolge < serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes()
//								.size(); ittFolge++) {
//							// alle Folgen itterieren
//							if (wanted[ittChecked] == serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).getId())
//								serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).setWanted(true);
//						}
//					}
//				}
//
//			}

		return "listSerieWithSeasonsAndEpisodes.html";

	}

}
