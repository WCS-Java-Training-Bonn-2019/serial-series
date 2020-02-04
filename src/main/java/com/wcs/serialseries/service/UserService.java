package com.wcs.serialseries.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.UserRepository;

@Service("service")
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public String getTitleFromId(long userId) {

		Optional<User> optionalUser = userRepository.findById(userId);
		if (optionalUser.isPresent()) {
			return ("Serial-Series - " + optionalUser.get().getName() + ":     ");
		} else {
			return "Serial-Series:     ";
		}

	}


	public String getEmptyTitle() {
		return "Serial-Series:     ";

	}

}
