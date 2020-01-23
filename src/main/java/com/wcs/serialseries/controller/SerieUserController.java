package com.wcs.serialseries.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.repository.SerieUserRepository;

import javassist.bytecode.Descriptor.Iterator;

@Controller
public class SerieUserController {


	
	@Autowired
    private SerieUserRepository repository;
	

	@GetMapping("/listSeries/{id}")
	public String listSeriesForName(@PathVariable long id, Model model) {

		// Controler um die Serien eines speziellen Nutzers anzuzeigen
		// Seite muss dann z.B. mit http://localhost:8080/listSerien/Metje gestartet
		// werden.

		// model befüllen und an HTML-Seite übergeben
		
		List<Serie> series = new ArrayList<>(); 
		List<SerieUser> listOfSerieUsers = new ArrayList<>();
		listOfSerieUsers = repository.findAll();
		
		//ersetzt WHERE-Bedingung
		int i = 0;
		while (i < listOfSerieUsers.size()) {
			if (listOfSerieUsers.get(i).getUser().getId()== id)
				series.add(listOfSerieUsers.get(i).getSerie());
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
		model.addAttribute("Type", "My");
		model.addAttribute("UserId", id);

		return "listSeries.html";
	}
}
