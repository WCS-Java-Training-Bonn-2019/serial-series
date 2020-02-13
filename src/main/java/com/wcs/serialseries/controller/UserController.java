package com.wcs.serialseries.controller;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.UserRepository;
import com.wcs.serialseries.service.UserService;

@Controller
public class UserController {

	private final UserRepository userRepository;
	private final SerieRepository serieRepository;
	private final UserService service;
	private final PasswordEncoder encoder;

	@Autowired
	public UserController(SerieRepository serieRepository, UserRepository userRepository, UserService service,
			PasswordEncoder encoder) {
		this.serieRepository = serieRepository;
		this.userRepository = userRepository;
		this.service = service;
		this.encoder = encoder;

	}

	// Startpage

	@GetMapping({ "/startSerialSeries", "/" })
	public String startSerialSeries(Model model) {
		long userId = service.getCurrentLoggedInUserId();
		model.addAttribute("Users", userRepository.findAll());
		model.addAttribute("Title", service.getTitleFromId(userId));
		model.addAttribute("Type", "Start");
		model.addAttribute("UserId", userId);
		return "start.html";
	}

	/*
	 * Login
	 */

	@GetMapping("/editUser")
	public String editUsers(Model model) {

		model.addAttribute("Type", "Login");
		model.addAttribute("Title", service.getEmptyTitle());

		return "newUser.html";
	}

	@GetMapping("/upsetUser")
	public String Page(Model model) {

		return "/upsetUser";
	}

	@PostMapping("/upsetUser")
	public String upsetUser(Model model, @RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password) {

		Optional<User> optionalUser = userRepository.findByUsername(username);
		if (optionalUser.isPresent()) {
			model.addAttribute("registerError", true);
			return "/login";
		} else {
			if ("admin".equalsIgnoreCase(username)) {
				model.addAttribute("adminError", true);
				return "/login";
			}
			User newUser = new User();
			newUser.setUsername(username);
			newUser.setPassword(encoder.encode(password));
			newUser = userRepository.save(newUser);
			return "redirect:/login";
		}

	}

	/*
	 * Admin
	 */

	@GetMapping("/users")
	public String getAll(Model model) {
		model.addAttribute("users", userRepository.findAll());
		model.addAttribute("Title", service.getTitleFromId(-1L));
		return "admin/userGetAll";
	}

	@PostMapping("/userUpsert")
	public String insert(@ModelAttribute User user) {
		if ("admin".equals(user.getUsername())) {
			throw new IllegalArgumentException("admin not allowed here");
		}
		user.setPassword(encoder.encode(user.getPassword()));
		user = userRepository.save(user);
		return "redirect:/users";
	}

	@GetMapping({ "/userNew", "/userEdit/{userId}" })
	public String edit(Model model, @PathVariable(required = false) Long userId) {
		User user = new User();
		if (userId != null) {
			Optional<User> optionalUser = userRepository.findById(userId);
			if (optionalUser.isPresent()) {
				user = optionalUser.get();
			} else {
				return "redirect:/";
			}
		}
		model.addAttribute("user", user);
		model.addAttribute("Title", service.getTitleFromId(-1L));
		return "admin/userEdit";
	}

	@GetMapping("/userDelete/{userId}")
	public String delete(@PathVariable("userId") long userId) {
		userRepository.deleteById(userId);
		return "redirect:/users";
	}
}