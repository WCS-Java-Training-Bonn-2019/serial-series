package com.wcs.serialseries.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.model.SerieUser;
import com.wcs.serialseries.model.User;

@Repository
public interface SerieUserRepository extends JpaRepository<SerieUser, Long> {

	
	List<SerieUser> findByUserAndSerie(User user, Serie serie);

	List<Serie> findByUserId(long id);

	List<SerieUser> findByUserIdAndSerieId(long idUser, long idSerie);


}

