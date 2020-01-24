package com.wcs.serialseries.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.repository.UserRepository;



@Controller
public class SerieUserController {

	
	private final SerieUserRepository repository;
	private final UserRepository userRepository;
	private final SerieRepository serieRepository;
	
	
	@Autowired
	public SerieUserController(SerieUserRepository repository, SerieRepository serieRepository,
			UserRepository userRepository) {
		this.repository = repository;
		this.serieRepository = serieRepository;
		this.userRepository = userRepository;
	}

	@GetMapping("/listSeries/{id}")
	public String listSeriesForName(@PathVariable long id, Model model) {

		List<Serie> series = new ArrayList<>();
		List<SerieUser> listOfSerieUsers = new ArrayList<>();
		listOfSerieUsers = repository.findAll();

		// ersetzt WHERE-Bedingung
		int i = 0;
		while (i < listOfSerieUsers.size()) {
			if (listOfSerieUsers.get(i).getUser().getId() == id)
				series.add(listOfSerieUsers.get(i).getSerie());
			i++;
		}

		model.addAttribute("Series", series);

		// Achtung: für DEMO
		String title = null;

		switch ((int) id) {
		case 1:
			title = "Serial-Series: Susi Smartphone";
			break;
		case 2:
			title = "Serial-Series: Daniel Desktop";
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
	public String deleteSerieFromMySeries(@RequestParam long idUser, @RequestParam long idSerie) {

		List<SerieUser> listOfSerieUsers = new ArrayList<>();
		listOfSerieUsers = repository.findAll();

		// ersetzt WHERE-Bedingung
		int i = 0;
		Long idSerieUser = null;
		while (i < listOfSerieUsers.size()) {
			if ((listOfSerieUsers.get(i).getUser().getId() == idUser)
					&& (listOfSerieUsers.get(i).getSerie().getId() == idSerie)) {
				idSerieUser = listOfSerieUsers.get(i).getId();
				break;
			}

			i++;
		}

		if (idSerieUser != null)
			repository.deleteById(idSerieUser);

		return "redirect:/listSeries/" + idUser;
	}

	@GetMapping("/listSeries/neu")
	public String addSerieToMySeries(@RequestParam long idUser, @RequestParam long idSerie) {
		
		
		SerieUser serieUser = new SerieUser();
		serieUser.setSerie(serieRepository.getOne(idSerie));
		serieUser.setUser(userRepository.getOne(idUser));

		serieUser = repository.save(serieUser);

		return "redirect:/listSeries/" + idUser;
	}

}
