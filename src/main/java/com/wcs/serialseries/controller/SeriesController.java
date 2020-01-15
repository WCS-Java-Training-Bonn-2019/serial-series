package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.repository.SerieRepository;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class SeriesController {
	
	private SerieRepository repository = new SerieRepository();

	
	private static List<Serie> listOfSeries = new ArrayList<Serie>();

	@GetMapping("/listSeries")
	public String listSeries(Model model) {
							
		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findAll()); 
					
		return "listSeries.html";
	}
	
	@GetMapping("/listSeries/{id}")
	public String listSeriesForName(@PathVariable long id, Model model) {
		
		// Controler um die Serien eines speziellen Nutzers anzuzeigen
		// Seite muss dann z.B. mit http://localhost:8080/listSerien/Metje gestartet werden.
		
		
		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findSeriesByUserId(id));
		return "listSeries.html";
	}
	
	
}
