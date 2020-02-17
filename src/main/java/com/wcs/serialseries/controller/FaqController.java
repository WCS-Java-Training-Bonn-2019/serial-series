package com.wcs.serialseries.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.wcs.serialseries.model.Faq;
import com.wcs.serialseries.repository.FaqRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class FaqController {

	private final FaqRepository faqRepository;
	private final UserService service;

	@Autowired
	public FaqController(FaqRepository faqRepository, UserService service) {
		this.faqRepository = faqRepository;
		this.service = service;
	}

	@GetMapping("/faq")
	public String getAll(Model model) {
		
		long userId = service.getCurrentLoggedInUserId();

		model.addAttribute("faq", faqRepository.findAll());
		model.addAttribute("Type", "Faq");
		
		if (userId ==0)
			model.addAttribute("Title", service.getEmptyTitle());
		else
			model.addAttribute("Title", service.getTitleFromId(userId));
		

		return "faq.html";
	}
	
	
	/*
	 * Admin
	 */

	@GetMapping("/faqs")
	public String getAllforAdmin(Model model) {
		model.addAttribute("faqs", faqRepository.findAll());
		model.addAttribute("Title", service.getTitleFromId(-1L));
		model.addAttribute("Type", "Admin");
		return "admin/faq_get_all";
	}

	@PostMapping("/faqUpsert")
	public String insert(@ModelAttribute Faq faq) {
		faqRepository.save(faq);
		return "redirect:/faqs";
	}

	@GetMapping({ "/faqNew", "/faqEdit/{faqId}" })
	public String edit(Model model, @PathVariable(required = false) Long faqId) {
		Faq faq = new Faq();
		if (faqId != null) {
			Optional<Faq> optionalFaq = faqRepository.findById(faqId);
			if (optionalFaq.isPresent()) {
				faq = optionalFaq.get();
			} else {
				return "redirect:/";
			}
		}
		model.addAttribute("faq", faq);
		model.addAttribute("Title", service.getTitleFromId(-1L));
		model.addAttribute("Type", "Admin");
		return "admin/faq_edit";
	}

	@GetMapping("/faqDelete/{faqId}")
	public String delete(@PathVariable("faqId") long faqId) {
		faqRepository.deleteById(faqId);
		return "redirect:/faqs";
	}
}

