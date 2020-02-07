package com.wcs.serialseries.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.User;
import com.wcs.serialseries.repository.SerieUserRepository;
import com.wcs.serialseries.repository.UserRepository;

@Service("service")
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private SerieUserRepository serieUserRepository;

	public String getTitleFromId(long userId) {

		Optional<User> optionalUser = userRepository.findById(userId);
		if (optionalUser.isPresent()) {
			return ("Serial-Series - " + optionalUser.get().getUsername() + ":     ");
		} else {
			return "Serial-Series:     ";
		}

	}


	public String getEmptyTitle() {
		return "Serial-Series:     ";

	}
	
	public long getSerieUserFromDB(long idUser, long idSerie) {
	
	List<SerieUser> listOfSerieUsers = serieUserRepository.findByUserIdAndSerieId(idUser, idSerie);
	if (!listOfSerieUsers.isEmpty()) {
		return listOfSerieUsers.get(0).getId();
	}
	else 
		return 0;
	}
	
	public long getCurrentLoggedInUserId() {
		
		String userName;
		
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
		  userName = ((UserDetails)principal).getUsername();
		} else {
		  userName = principal.toString();
		}
		if ("anonymousUser".equals(userName))
			return 0L;
		else {
			// Nummer aus DB ermitteln
			Optional<User> optionalUser = userRepository.findByUsername(userName);
			if (optionalUser.isPresent()) {
				return optionalUser.get().getId();
			} else {
				return 0L;
			}
			
		}

	}

}
