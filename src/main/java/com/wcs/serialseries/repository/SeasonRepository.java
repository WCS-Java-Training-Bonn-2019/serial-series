package com.wcs.serialseries.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.Episode;


@Repository
public interface SeasonRepository extends JpaRepository<Episode, Long> {
		
}
