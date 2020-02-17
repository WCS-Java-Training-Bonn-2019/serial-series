package com.wcs.serialseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wcs.serialseries.service.UserService;

@Controller
public class AboutUsController {

	private final UserService service;

	@Autowired
	public AboutUsController(UserService service) {
		this.service = service;
	}
	
	@GetMapping("/aboutUs")
	public String getAll(Model model) {
		
		long userId = service.getCurrentLoggedInUserId();

		model.addAttribute("Type", "About");
		if (userId ==0)
			model.addAttribute("Title", service.getEmptyTitle());
		else
			model.addAttribute("Title", service.getTitleFromId(userId));

		return "about_us.html";
	}
	
}