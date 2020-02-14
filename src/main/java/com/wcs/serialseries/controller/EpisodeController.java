package com.wcs.serialseries.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.wcs.serialseries.model.Episode;
import com.wcs.serialseries.repository.EpisodeRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class EpisodeController {
	
	
	private final EpisodeRepository episodeRepository;
	private final UserService service;

	@Autowired
	public EpisodeController(EpisodeRepository episodeRepository, UserService service) {
		this.episodeRepository = episodeRepository;
		this.service = service;
	}
	
	/*
	 * Admin
	 */

	@GetMapping("/episodes")
	public String getAllforAdmin(Model model) {
		model.addAttribute("episodes", episodeRepository.findAll());
		model.addAttribute("Title", service.getTitleFromId(-1L));
		return "admin/episodeGetAll";
	}

	@PostMapping("/episodeUpsert")
	public String insert(@ModelAttribute Episode episode) {
		episodeRepository.save(episode);
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
		model.addAttribute("episode", episode);
		model.addAttribute("Title", service.getTitleFromId(-1L));
		return "admin/episodeEdit";
	}

	@GetMapping("/episodeDelete/{episodeId}")
	public String delete(@PathVariable("episodeId") long episodeId) {
		episodeRepository.deleteById(episodeId);
		return "redirect:/episodes";
	}
}


