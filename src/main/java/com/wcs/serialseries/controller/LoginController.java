package com.wcs.serialseries.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/login")
	public String loginPage(Model model) {

		
		return "/login";
	}
	
	@GetMapping("/logout")
	public String logoutPage(Model model) {

		
		return "/logout";
	}
	

}
