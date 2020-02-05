package com.wcs.serialseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wcs.serialseries.repository.FAQRepository;


@Controller
public class FAQController {

	@Autowired
	private FAQRepository faqRepository;
	
	
	@GetMapping("/FAQ")
	public String getAll(Model model) {

		model.addAttribute("faq", faqRepository.findAll());
		
		return "FAQ";
	}
}
