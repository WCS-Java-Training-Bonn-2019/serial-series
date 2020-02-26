package com.wcs.serialseries.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.SerieUserEpisode;
import com.wcs.serialseries.repository.EpisodeRepository;
import com.wcs.serialseries.repository.SeasonRepository;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class EpisodeController {

	private final EpisodeRepository episodeRepository;
	private final UserService service;
	private final SeasonRepository seasonRepository; 
	private final SerieRepository serieRepository;
	private final SerieUserRepository serieUserRepository;
	private final SerieUserEpisodeRepository serieUserEpisodeRepository;

	@Autowired
	public EpisodeController(EpisodeRepository episodeRepository, 
			SeasonRepository seasonRepository,
			SerieRepository serieRepository,
			SerieUserRepository serieUserRepository,
			SerieUserEpisodeRepository serieUserEpisodeRepository, 
			UserService service) {
		this.episodeRepository = episodeRepository;
		this.seasonRepository = seasonRepository;
		this.serieRepository = serieRepository;
		this.serieUserRepository = serieUserRepository;
		this.serieUserEpisodeRepository = serieUserEpisodeRepository;
		this.service = service;
	}

	/*
	 * Admin
	 */

	@GetMapping("/episodes")
	public String getAllforAdmin(Model model) {
//		model.addAttribute("episodes", episodeRepository.findAll());
		model.addAttribute("episodes",
				episodeRepository.findAllByOrderBySeasonSerieNameAscSeasonSeasonNrAscEpisodeNrAsc());
		model.addAttribute("Title", service.getTitle());
		model.addAttribute("Type", "Admin");
		return "admin/episode_get_all";
	}

	@PostMapping("/episodeUpsert")
	public String insert(@ModelAttribute Episode episode) {
		episode = episodeRepository.save(episode);
		System.out.println("Episoden-Nr.: " + episode.getEpisodeNr() + ", Season-ID: " + episode.getSeason());
// bei Neuanlage:		
// Aktualisierung der SUE notwendig!
// Weg über Season, Serie, SerieUser?
// Sofern überhaupt Einträge für diese Serie einem User zugeordnet sind...
		SerieUserEpisode serieUserEpisode = new SerieUserEpisode();
		Season season = episode.getSeason();
		Serie serie = season.getSerie();
		List<SerieUser> serieUsers = serieUserRepository.findBySerieId(serie.getId());
		for (int i = 0; i < serieUsers.size(); i++) {
			serieUserEpisode.setRanking(0);
			serieUserEpisode.setWanna_c(false);
			serieUserEpisode.setWatched(false);
			serieUserEpisode.setEpisode(episode);
			serieUserEpisode.setSerieUser(serieUsers.get(i));
			serieUserEpisodeRepository.save(serieUserEpisode);

		}
		
		
		
		return "redirect:/episodes";
	}

	@GetMapping({ "/episodeNew", "/episodeEdit/{episodeId}" })
	public String edit(Model model, @PathVariable(required = false) Long episodeId) {
		Episode episode = new Episode();
		if (episodeId != null) {
			Optional<Episode> optionalEpisode = episodeRepository.findById(episodeId);
			if (optionalEpisode.isPresent()) {
				episode = optionalEpisode.get();
			} else {
				return "redirect:/";
			}
		}
		model.addAttribute("series", serieRepository.findAllByOrderByName());
		model.addAttribute("episode", episode);
		model.addAttribute("Title", service.getTitle());
		model.addAttribute("Type", "Admin");
		return "admin/episode_edit";
	}

	@GetMapping("/episodeDelete/{episodeId}")
	public String delete(@PathVariable("episodeId") long episodeId) {
		episodeRepository.deleteById(episodeId);
		return "redirect:/episodes";
	}
}
