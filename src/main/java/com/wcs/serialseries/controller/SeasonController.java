package com.wcs.serialseries.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.wcs.serialseries.model.Season;
import com.wcs.serialseries.repository.SeasonRepository;
import com.wcs.serialseries.service.UserService;


@Controller
public class SeasonController {

	private final SeasonRepository seasonRepository;
	private final UserService service;

	@Autowired
	public SeasonController(SeasonRepository seasonRepository, UserService service) {
		this.seasonRepository = seasonRepository;
		this.service = service;
	}

	@GetMapping("/season")
	public String getAll(Model model) {

		model.addAttribute("season", seasonRepository.findAll());
		model.addAttribute("Type", "Season");
		model.addAttribute("Title", service.getTitle());

		return "season.html";
	}
	
	
	/*
	 * Admin
	 */

	@GetMapping("/seasons")
	public String getAllforAdmin(Model model) {
		// erst Serien-Titel ausgeben, dann die einzelnen Staffelnumern
		model.addAttribute("seasons", seasonRepository.findAll());
		model.addAttribute("Title", service.getTitle());
		model.addAttribute("Type", "Admin");

		return "admin/season_get_all";
	}

	@PostMapping("/seasonUpsert")
	public String insert(@ModelAttribute Season season) {
		seasonRepository.save(season);
		return "redirect:/seasons";
	}

	@GetMapping({ "/seasonNew", "/seasonEdit/{seasonId}" })
	public String edit(Model model, @PathVariable(required = false) Long seasonId) {
		Season season = new Season();
		if (seasonId != null) {
			Optional<Season> optionalSeason = seasonRepository.findById(seasonId);
			if (optionalSeason.isPresent()) {
				season = optionalSeason.get();
			} else {
				return "redirect:/";
			}
		}
		model.addAttribute("season", season);
		model.addAttribute("Title", service.getTitle());
		model.addAttribute("Type", "Admin");

		return "admin/season_edit";

	}

	@GetMapping("/seasonDelete/{seasonId}")
	public String delete(@PathVariable("seasonId") long seasonId) {
		seasonRepository.deleteById(seasonId);
		return "redirect:/seasons";
	}
}

