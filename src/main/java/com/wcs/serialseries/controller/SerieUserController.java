package com.wcs.serialseries.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.repository.UserRepository;

@Controller
public class SerieUserController {

	private final SerieUserRepository serieUserRepository;
	private final UserRepository userRepository;
	private final SerieRepository serieRepository;

	@Autowired
	public SerieUserController(SerieUserRepository serieUserRepository, SerieRepository serieRepository,
			UserRepository userRepository) {
		this.serieUserRepository = serieUserRepository;
		this.serieRepository = serieRepository;
		this.userRepository = userRepository;
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

		return "redirect:/listSeries/" + idUser;
	}

}
