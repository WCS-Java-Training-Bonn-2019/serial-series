package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.service.UserService;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

	// Gleicher Controller für "Meine Serien" und "Alle Serien"
	@GetMapping({ "/listMySeries", "/listAllSeries" })
	public String listSeries(Model model) {

		long userId = service.getCurrentLoggedInUserId();

		if (userId == 0) {
			model.addAttribute("Series", serieRepository.findAllByOrderByName());
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getTitle());

			return "list_series.html";
		} else {
			List<Serie> series = serieRepository.findBySerieUsersUserIdOrderByName(userId);

			model.addAttribute("Series", series);
			model.addAttribute("Title", service.getTitle());
			model.addAttribute("Type", "My");
			model.addAttribute("UserId", userId);

			return "list_series.html";
		}
	}

	// Controller für "Neu/Hinzufügen Serien"
	@GetMapping("/listSeries/New")
	public String listNewSeriesForUserId(Model model) {

		long userId = service.getCurrentLoggedInUserId();

		List<Serie> series = serieRepository.findAllByOrderByName();

		if (userId == 0) {

			model.addAttribute("Series", series);
			model.addAttribute("Type", "All");
			model.addAttribute("Title", service.getTitle());

			return "list_series.html";
		} else {
			series = service.removeMySeries(series, userId);

			model.addAttribute("Series", series);
			model.addAttribute("Title", service.getTitle());
			model.addAttribute("Type", "New");
			model.addAttribute("UserId", userId);

			return "list_series.html";
		}
	}

	// Controller zur Entgegennahme Suchstring "Meine-Serien" und "Alle Serien"
	@PostMapping("/listSearch")
	public String postSearch(Model model, @RequestParam(value = "Search", required = false) String search) {
		long userId = service.getCurrentLoggedInUserId();

		if (userId == 0) {
			if (search == null || search.isEmpty()) {
				model.addAttribute("Series", serieRepository.findAllByOrderByName());
				model.addAttribute("Type", "All");
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Search", search);

				return "redirect:/listAllSeries";
			} else {
				model.addAttribute("Series",
						serieRepository.findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(
								search, search, search));
				model.addAttribute("Type", "All");
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Search", search);

				return "list_series.html";
			}
		} else {
			if (search == null || search.isEmpty()) {
				model.addAttribute("Series", serieRepository.findBySerieUsersUserIdOrderByName(userId));
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Type", "My");
				model.addAttribute("UserId", userId);

				return "redirect:/listMySeries";
			} else {
				List<Serie> series = serieRepository
						.findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(search, search,
								search);
				series = service.removeNotMySeries(series, userId);
				model.addAttribute("Series", series);
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Type", "My");
				model.addAttribute("UserId", userId);

				return "list_series.html";
			}
		}
	}

	// Controller zur Entgegennahme Suchstring "Neue/Hinzuzufügende-Serien"
	@PostMapping("/listSearchNew")
	public String postSearchNew(Model model, @RequestParam(value = "Search", required = false) String search) {
		long userId = service.getCurrentLoggedInUserId();

		if (userId != 0) {
			if (search == null || search.isEmpty()) {
				model.addAttribute("Series", serieRepository.findBySerieUsersUserIdOrderByName(userId));
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Type", "New");
				model.addAttribute("UserId", userId);
				return "redirect:/listMySeries";
			}

			else {
				List<Serie> series = serieRepository
						.findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(search, search,
								search);
				series = service.removeMySeries(series, userId);
				model.addAttribute("Series", series);
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Type", "New");
				model.addAttribute("UserId", userId);
				return "list_series.html";
			}
		} else
			return "redirect:/listAllSeries";
	}

//Admin Seiten

	@GetMapping("/series")
	public String getAll(Model model) {
		model.addAttribute("Series", serieRepository.findAllByOrderByName());
		model.addAttribute("Title", service.getTitle());
		model.addAttribute("Type", "Admin");
		return "admin/serie_get_all";
	}

	@PostMapping("/serieUpsert")
	public String insert(Model model, @Valid Serie serie, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "admin/serie_edit";
		}
		serie = serieRepository.save(serie);
		return "redirect:/series";
	}

	@GetMapping({ "/serieNew", "/serieEdit/{id}" })
	public String edit(Model model, @PathVariable(required = false) Long id) {
		if (id == null) {
			model.addAttribute("serie", new Serie());
			model.addAttribute("Title", service.getTitle());
			model.addAttribute("Type", "Admin");
			return "admin/serie_edit";
		} else {
			Optional<Serie> optionalSerie = serieRepository.findById(id);
			if (optionalSerie.isPresent()) {
				model.addAttribute("serie", optionalSerie.get());
				model.addAttribute("Title", service.getTitle());
				model.addAttribute("Type", "Admin");
			} else {
				return "redirect:/series";
			}
			return "admin/serie_edit";
		}
	}

	@GetMapping("/serieDelete/{id}")
	public String delete(@PathVariable("id") long id) {
		serieRepository.deleteById(id);
		return "redirect:/series";
	}

}
