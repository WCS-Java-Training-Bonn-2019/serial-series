package com.wcs.serialseries.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.form.FormEpisode;
import com.wcs.serialseries.form.FormSeason;
import com.wcs.serialseries.form.FormSerie;
import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUserEpisode;

import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class SerieUserEpisodeController {

	private final SerieRepository serieRepository;
	private final SerieUserEpisodeRepository serieUserEpisodeRepository;
	private final UserService service;

	@Autowired
	public SerieUserEpisodeController(SerieRepository serieRepository,
			SerieUserEpisodeRepository serieUserEpisodeRepository, SerieUserRepository serieUserRepository,
			UserService service) {
		this.serieRepository = serieRepository;
		this.serieUserEpisodeRepository = serieUserEpisodeRepository;
		this.service = service;
	}

	@GetMapping("/listSerieSeasonsEpisodes")
	public String showSerie(@RequestParam(value = "idSerie", required = false) long idSerie, Model model) {
		
		long idUser = service.getCurrentLoggedInUserId();
		Optional<Serie> optionalSerie = serieRepository.findById(idSerie);
		if (optionalSerie.isPresent()) {

			Serie serie = optionalSerie.get();

			model.addAttribute("Serie", fillFormWithDatafromDB (idUser, idSerie , serie));
			model.addAttribute("Title", service.getTitle());
			model.addAttribute("Type", "Details");
			model.addAttribute("UserId", idUser);
			return "list_serie_with_seasons_and_episodes.html";

		} else {
			return "list_series.html";
		}

	}

	@PostMapping("/listSerieSeasonsEpisodes")
	public String postStaffeln(@RequestParam(value = "seen", required = false) int[] seen,
			@RequestParam(value = "wanted", required = false) int[] wanted,
			@RequestParam(value = "UserId", required = false) long idUser,
			@RequestParam(value = "SerieId", required = false) long idSerie) {

		// Bisherige Daten aus der DB holen
		List<SerieUserEpisode> serieUserEpisodes = serieUserEpisodeRepository.findBySerieUserId(service.getSerieUserFromDB(idUser, idSerie));
		
		for (int ittStaffel = 0; ittStaffel < serieUserEpisodes.size(); ittStaffel++) {
			fillPersistedDataWithFormData(seen, wanted, serieUserEpisodes, ittStaffel);
			serieUserEpisodeRepository.save(serieUserEpisodes.get(ittStaffel));
		}

		return "redirect:/listMySeries/";

	}

	
	/**
	 * 
	 * @param seen : Liste mit den Episodennummern aller als gesehen markierten Episoden
	 * @param wanted : Liste mit den Episodennummern aller als wanna_c markierten Episoden
	 * @param serieUserEpisodes : Entity die befüllt werden soll
	 * @param ittStaffel : Aktuelle Staffel
	 */
	
	private void fillPersistedDataWithFormData(int[] seen, int[] wanted, List<SerieUserEpisode> serieUserEpisodes,
			int ittStaffel) {
		// Erstmal alle auf false setzen
		serieUserEpisodes.get(ittStaffel).setWatched(false);
		serieUserEpisodes.get(ittStaffel).setWanna_c(false);
		
		// Ankreuzen oder nicht
		if (seen != null) {
		// Seen durchsuchen
			for (int ittSeen = 0; ittSeen < seen.length; ittSeen++) {
				// Staffelnummer identisch zu seen?
				if (serieUserEpisodes.get(ittStaffel).getEpisode().getId() == seen[ittSeen]) {
					serieUserEpisodes.get(ittStaffel).setWatched(true);
				}
			}
		}
		
		// Wanna_c durchsuchen
		if (wanted != null) {
			for (int ittWanted = 0; ittWanted < wanted.length; ittWanted++) {
				// Staffelnummer identisch zu wanted?
				if (serieUserEpisodes.get(ittStaffel).getEpisode().getId() == wanted[ittWanted]) {
					serieUserEpisodes.get(ittStaffel).setWanna_c(true);
				}
			}
		}
	}
	
	
	/**
	 * 
	 * @param idUser : User zu dem die Daten gelesen werden sollen
	 * @param idSerie : Serie zu der die Daten gelesen werden sollen
	 * @param serie : Entity, die aus der DB befüllt wird 
	 * @return  Das befüllte Formular, welches angezeigt werden soll
	 */
	
	public FormSerie fillFormWithDatafromDB(long idUser,long idSerie, Serie serie) {
		
		List<FormSeason> formSeasons = new ArrayList<>();
		for (Season season : serie.getSeasons()) {
			List<FormEpisode> formEpisodes = new ArrayList<>();
			for (Episode episode : season.getEpisodes()) {

				SerieUserEpisode serieUserEpisode = serieUserEpisodeRepository.findByEpisodeIdAndSerieUserId(
						episode.getId(), service.getSerieUserFromDB(idUser, idSerie));

				FormEpisode formEpisode = new FormEpisode();
				formEpisode.setId(episode.getId());
				formEpisode.setEpisode_Nr(episode.getEpisode_Nr());
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
		
		return formSerie;
	}

}
