package com.wcs.serialseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class LoginController {
	
	private final UserService service;

	@Autowired
	public LoginController(UserService service) {
		this.service = service;
	}
	
	@GetMapping("/login")
	public String loginPage(Model model) {

		model.addAttribute("Title", service.getEmptyTitle());
		model.addAttribute("Type", "Login");
		return "/login";
	}
	
	@GetMapping("/login-error")
	public String errorPage(Model model) {
		model.addAttribute("loginError", true);
		
		return "/login";
	}
	
		
	@GetMapping("/logout")
	public String logoutPage(Model model) {

		
		return "/logout";
	}
	

}
