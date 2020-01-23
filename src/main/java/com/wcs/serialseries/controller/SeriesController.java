package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.SerieRepository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SeriesController {

	@Autowired
	private SerieRepository repository;

	@GetMapping("/listSeries")
	public String listSeries(Model model) {

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findAll());
		model.addAttribute("Type", "All");

		return "listSeries.html";
	}

//	//Nur Für SprintDemo
//	@GetMapping("/")
//	public String listSeriesFromRoot(Model model) {
//
//		// model befüllen und an HTML-Seite übergeben
//		model.addAttribute("Series", repository.findAll());
//
//		return "listSeries.html";
//	}
//

//	
	

	@GetMapping("/listSeries/New/{id}")
	public String listNewSeriesForName(@PathVariable long id, Model model) {

		// Controler um die potentiellen neuen Serien eines speziellen Nutzers
		// anzuzeigen
		// Seite muss dann z.B. mit http://localhost:8080/listSerien/Metje gestartet
		// werden.

		// model befüllen und an HTML-Seite übergeben
		List<Serie> series = new ArrayList<>();
				
		series = repository.findAll();
		

		// ersetzt WHERE-Bedingung
		int i = 0;
		while (i < series.size()) {
			List<SerieUser> serieUser = series.get(i).getSerieUsers();
			int y = 0;
			while (y < serieUser.size()) {
				if (serieUser.get(y).getUser().getId() == id) {
					series.remove(i);
					i--;
				}
				y++;
			}
			i++;
		}

		model.addAttribute("Series", series);

		// Achtung: für DEMO
		String title = null;
		switch ((int) id) {
		case 1:
			title = "Serial-Series: Susi";
			break;
		case 2:
			title = "Serial-Series: Daniel";
			break;
		default:
			title = "Serial-Series";
		}
		model.addAttribute("Title", title);
		model.addAttribute("Type", "New");
		model.addAttribute("UserId", id);

		return "listSeries.html";
	}
}
