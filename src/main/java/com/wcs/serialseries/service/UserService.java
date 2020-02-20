package com.wcs.serialseries.service;

import java.util.List;
import java.util.ListIterator;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.wcs.serialseries.model.Serie;
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

	
	/**
	 * 
	 * @return Aktuellen Header-Titel
	 */
	public String getTitle() {
		long userId = getCurrentLoggedInUserId();
		if (userId==0L) return "Serial-Series:     ";
		else if (userId == -1L)	return ("Serial-Series - ADMIN:     ");
		else { //User angemeldet
			Optional<User> optionalUser = userRepository.findById(userId);
			if (optionalUser.isPresent()) {
				return ("Serial-Series - " + optionalUser.get().getUsername() + ":     ");
			} else {
				return "Serial-Series:     ";
			}
		}
	}
	

	/**
	 * 
	 * @param idUser
	 * @param idSerie
	 * @return id des entsprechenden Eintrags in der Tabelle SerieUser
	 */
	public long getSerieUserFromDB(long idUser, long idSerie) {
		List<SerieUser> listOfSerieUsers = serieUserRepository.findByUserIdAndSerieId(idUser, idSerie);
		if (!listOfSerieUsers.isEmpty()) {
			return listOfSerieUsers.get(0).getId();
		} else
			return 0;
	}

	/**
	 * 
	 * @return 0L=kein User angemeldet / -1L Admin angemeldet / ansonsten UserId des angemeldeten Users
	 */
	public long getCurrentLoggedInUserId() {

		String userName;

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
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
				return -1L;
			}
		}

	}

	/**
	 * 
	 * @param series Liste von allen vorhandenen Serien
	 * @param userId
	 * @return Liste von Serien, die im Portfolio des Users enthalten sind
	 */
	public List<Serie> removeMySeries(List<Serie> series, long userId) {

		ListIterator<Serie> listIterator = series.listIterator();

		while (listIterator.hasNext()) {
			Serie serie = listIterator.next();

			ListIterator<SerieUser> listIteratorSerieUser = serie.getSerieUsers().listIterator();
			while (listIteratorSerieUser.hasNext()) {
				SerieUser serieUser = listIteratorSerieUser.next();
				if (serieUser.getUser().getId() == userId) {
					listIterator.remove();
					break;
				}
			}

		}

		return series;
	}
	
	/**
	 * 
	 * @param series Liste von allen vorhandenen Serien
	 * @param userId
	 * @return Liste von Serien, die NICHT im Portfolio des Users enthalten sind
	 */
	public List<Serie> removeNotMySeries(List<Serie> series, long userId) {

		ListIterator<Serie> listIterator = series.listIterator();

		while (listIterator.hasNext()) {
			Serie serie = listIterator.next();

			boolean delete = true;
			ListIterator<SerieUser> listIteratorSerieUser = serie.getSerieUsers().listIterator();
			while (listIteratorSerieUser.hasNext()) {
				SerieUser serieUser = listIteratorSerieUser.next();
				if (serieUser.getUser().getId() == userId)
					delete = false;
			}

			if (delete)
				listIterator.remove();

		}

		return series;
	}

}
