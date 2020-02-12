package com.wcs.serialseries.controller;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.SerieRepository;
import com.wcs.serialseries.repository.SerieUserEpisodeRepository;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.repository.UserRepository;
import com.wcs.serialseries.service.UserService;


@Controller
public class UserController {


	private final UserRepository userRepository;
	private final SerieRepository serieRepository;
	private final UserService service;
	private final PasswordEncoder encoder;
	
	
	@Autowired
	public UserController(SerieRepository serieRepository, 	UserRepository userRepository, UserService service, PasswordEncoder encoder) {
		this.serieRepository = serieRepository;
		this.userRepository = userRepository;
		this.service = service;
		this.encoder = encoder;

	}
	
	//Startpage

	@GetMapping({"/startSerialSeries", "/"})	
	public String startSerialSeries(Model model) {
		model.addAttribute("Users", userRepository.findAll());
		model.addAttribute("Title", service.getEmptyTitle());
		model.addAttribute("Type", "Start");
		model.addAttribute("UserId", 0L);
		return "start.html";
	}
	
	 
	 
	 // Playground
	 
	 
		 

	@GetMapping("/listUsers")
	public String listUsers(Model model) {

		// model befüllen und an HTML-Seite übergeben
		model.addAttribute("Users", userRepository.findAll());

		return "listUsers.html";
	}
	
	@GetMapping("/editUser")
	public String editUsers(Model model) {
		
		model.addAttribute("Type", "Login");
		model.addAttribute("Title", service.getEmptyTitle());
			
		return "newUser.html";
	}

//	@GetMapping("/register-error")
//	public String errorRegisterPage(Model model) {
//		model.addAttribute("registerError", true);
//		
//		return "/login";
//	}
	
	@GetMapping("/upsetUser")
	public String Page(Model model) {
		
		return "/upsetUser";
	}
	

	
	@PostMapping("/upsetUser")
	public String upsetUser(Model model,
			@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password) {

		Optional<User> optionalUser = userRepository.findByUsername(username);
		if (optionalUser.isPresent()) {
			model.addAttribute("registerError", true);
			return "/login";
		} else {
			if("admin".equalsIgnoreCase(username)) {
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
	
	

    @GetMapping("/addseries2user")
    public String getRegister(Model out,
                              @RequestParam Long idUser) {

        Optional<User> optionalUser = userRepository.findById(idUser);
        User user = new User();
        if (optionalUser.isPresent()) {
            user = optionalUser.get();
        }
        out.addAttribute("user", user);
        out.addAttribute("allSeries", serieRepository.findAll());

        // call the method getSeries in User
        List<Serie> series = new ArrayList<>();
        Method method = getMethod(user, "getSerieUsers",
                new Class[]{});
        if (method != null) {
            try {
                series = (List<Serie>) method.invoke(user);
            } catch (IllegalAccessException | InvocationTargetException e) {
                e.printStackTrace();
            }
        }
        out.addAttribute("serieUsers", series);

        return "addseries2user";
    }

    @PostMapping("/addseries2user")
    public String postRegister(@RequestParam Long idUser,
                               @RequestParam Long idSerie) {

        Optional<User> optionalUser = userRepository.findById(idUser);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();

            Optional<Serie> optionalSerie = serieRepository.findById(idSerie);
            if (optionalSerie.isPresent()) {
                Serie serie = optionalSerie.get();

                // call the method getSeries in User
                List<Serie> series;
                Method method = getMethod(user, "getSerieUsers",
                        new Class[]{});
                if (method != null) {
                    try {
                        series = (List<Serie>) method.invoke(user);
                        series.add(serie);
                    } catch (IllegalAccessException | InvocationTargetException e) {
                        e.printStackTrace();
                    }
                }

                userRepository.save(user);
            }
        }

        return "redirect:/addseries2user?idUser=" + idUser;
    }
	

	public Method getMethod(Object obj, String methodName, Class[] args) {
		Method method;
		try {
			method = obj.getClass().getDeclaredMethod(methodName, args);
			return method;
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	
}