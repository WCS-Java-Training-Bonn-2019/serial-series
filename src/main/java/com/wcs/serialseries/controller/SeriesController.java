package com.wcs.serialseries.controller;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.repository.SerieRepository;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SeriesController {

	private SerieRepository repository = new SerieRepository();

	@GetMapping("/listSeries")
	public String listSeries(Model model) {

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findAll());
		model.addAttribute("Type", "All");

		return "listSeries.html";
	}
	
	
	//Nur Für SprintDemo
	@GetMapping("/")
	public String listSeriesFromRoot(Model model) {

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findAll());

		return "listSeries.html";
	}


	@GetMapping("/listSeries/{id}")
	public String listSeriesForName(@PathVariable long id, Model model) {

		// Controler um die Serien eines speziellen Nutzers anzuzeigen
		// Seite muss dann z.B. mit http://localhost:8080/listSerien/Metje gestartet
		// werden.

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findSeriesByUserId(id));

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
		model.addAttribute("Type", "My");
		model.addAttribute("UserId", id);

		return "listSeries.html";
	}
	
	
	    @GetMapping("/listSeries/loeschen")
	    public String deleteSerieFromMySeries(@RequestParam Long idUser, @RequestParam Long idSerie ) {

	    	 /* Löschen des Datensates */
			 repository.deleteSeriesByUserIdAndSerieId(idUser, idSerie);

			 return "redirect:/listSeries/" + idUser;
	    }
	    
	    @GetMapping("/listSeries/neu")
	    public String newSerieForMySeries(@RequestParam Long idUser, @RequestParam Long idSerie ) {

	    	 /* Hinzufügen des Serie zu MeineSerien des Users */
			 repository.newSerieForUser(idUser, idSerie);

			 return "redirect:/listSeries/" + idUser;
	    }
	
	
	@GetMapping("/listSeries/New/{id}")
	public String listNewSeriesForName(@PathVariable long id, Model model) {

		// Controler um die potentiellen neuen Serien eines speziellen Nutzers anzuzeigen
		// Seite muss dann z.B. mit http://localhost:8080/listSerien/Metje gestartet
		// werden.

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Series", repository.findNewSeriesByUserId(id));

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
