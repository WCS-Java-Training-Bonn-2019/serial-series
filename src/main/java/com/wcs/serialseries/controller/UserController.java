package com.wcs.serialseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wcs.serialseries.repository.UserRepository;

@Controller
public class UserController {

	
	@Autowired
    private UserRepository repository;
	

	@GetMapping("/listUsers")
	public String listUsers(Model model) {

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Users", repository.findAll());

		return "listUsers.html";
	}
}