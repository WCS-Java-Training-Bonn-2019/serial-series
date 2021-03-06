
package com.wcs.serialseries.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.Episode;


@Repository
public interface EpisodeRepository extends JpaRepository<Episode, Long> {

	List<Episode> findAllByOrderBySeasonSerieNameAscSeasonSeasonNrAscEpisodeNrAsc();

	
}
