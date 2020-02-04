package com.wcs.serialseries.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
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
			return ("Serial-Series - " + optionalUser.get().getName() + ":     ");
		} else {
			return "Serial-Series:     ";
		}

	}


	public String getEmptyTitle() {
		return "Serial-Series:     ";

	}
	
	public long getSerieUserFromDB(long idUser, long idSerie) {
	
	List<SerieUser> listOfSerieUsers = serieUserRepository.findByUserIdAndSerieId(idUser, idSerie);
	if (!listOfSerieUsers.isEmpty())
		return listOfSerieUsers.get(0).getId();
	else 
		return 0;
	}

}
