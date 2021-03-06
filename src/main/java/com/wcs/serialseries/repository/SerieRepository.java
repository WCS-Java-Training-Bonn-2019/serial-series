package com.wcs.serialseries.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.Serie;



@Repository
public interface SerieRepository extends JpaRepository<Serie, Long> {

	List<Serie> findBySerieUsersUserId(Long userId);

	List<Serie> findAllByOrderByName();

	List<Serie> findBySerieUsersUserIdOrderByName(long userId);

	List<Serie> findAllByNameContaining(String search);

	List<Serie> findAllByNameContainingOrderByName(String search);

	List<Serie> findAllByNameContainingOrDescriptionContainingOrderByName(String search, String search2);

	List<Serie> findAllByNameContainingOrDescriptionContainingOrHashtagContainingOrderByName(String search, String search2,
			String search3);

	
	
			
		
}
