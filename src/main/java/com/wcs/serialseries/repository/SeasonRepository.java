package com.wcs.serialseries.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.Season;


@Repository
public interface SeasonRepository extends JpaRepository<Season, Long> {

	List<Season> findAllByOrderBySerieName();

	List<Season> findAllByOrderBySeasonNr();

	List<Season> findAllByOrderBySerieNameAscSeasonNrAsc();
		
}
