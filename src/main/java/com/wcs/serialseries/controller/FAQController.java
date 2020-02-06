package com.wcs.serialseries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.wcs.serialseries.repository.FAQRepository;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.service.UserService;


@Controller
public class FAQController {

	private final FAQRepository faqRepository;
	private final UserService service;

	@Autowired
	public FAQController(FAQRepository faqRepository, UserService service) {
		this.faqRepository = faqRepository;
		this.service = service;
	}
	
	
	@GetMapping("/FAQ")
	public String getAll(Model model) {

		model.addAttribute("faq", faqRepository.findAll());
		model.addAttribute("Type", "Faq");
		model.addAttribute("Title", service.getEmptyTitle());
		
		return "FAQ.html";
	}
}
