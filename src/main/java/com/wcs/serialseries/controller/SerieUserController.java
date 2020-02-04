package com.wcs.serialseries.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.SerieUserEpisode;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.repository.UserRepository;

@Controller
public class SerieUserController {

	private final SerieUserRepository serieUserRepository;
	private final UserRepository userRepository;
	private final SerieRepository serieRepository;
	private final SerieUserEpisodeRepository serieUserEpisodeRepository;

	@Autowired
	public SerieUserController(SerieUserRepository serieUserRepository, SerieRepository serieRepository,
			UserRepository userRepository, SerieUserEpisodeRepository serieUserEpisodeRepository) {
		this.serieUserRepository = serieUserRepository;
		this.serieRepository = serieRepository;
		this.userRepository = userRepository;
		this.serieUserEpisodeRepository = serieUserEpisodeRepository;
	}

	@GetMapping("/listSeries/loeschen")
	public String deleteSerieFromMySeries(@RequestParam long idUser, @RequestParam long idSerie) {

		List<SerieUser> listOfSerieUsers = serieUserRepository.findByUserIdAndSerieId(idUser, idSerie);
		if (!listOfSerieUsers.isEmpty())
			serieUserRepository.deleteById(listOfSerieUsers.get(0).getId());

		return "redirect:/listSeries/" + idUser;
	}

	@GetMapping("/listSeries/neu")
	public String addSerieToMySeries(@RequestParam long idUser, @RequestParam long idSerie) {

		SerieUser serieUser = new SerieUser();
		serieUser.setSerie(serieRepository.getOne(idSerie));
		serieUser.setUser(userRepository.getOne(idUser));

		serieUser = serieUserRepository.save(serieUser);
		
		//SerieUserEpisode initial befüllen
		
		for (Season season : serieUser.getSerie().getSeasons()) {
			//   Alle Seasons durchlaufen
			
			for (Episode episode : season.getEpisodes()) {
				// Alle Episoden anlegen
				SerieUserEpisode serieUserEpisode = new SerieUserEpisode();
				serieUserEpisode.setEpisode(episode);  
				serieUserEpisode.setSerieUser(serieUser);
				serieUserEpisode.setWatched(false);
				serieUserEpisode.setWanna_c(false);
				serieUserEpisode.setRanking(0);
				
				serieUserEpisode = serieUserEpisodeRepository.save(serieUserEpisode);
				
				
			}
		}

		return "redirect:/listSeries/" + idUser;
	}

}
