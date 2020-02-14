package com.wcs.serialseries.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.wcs.serialseries.model.SerieUserEpisode;


@Repository
public interface SerieUserEpisodeRepository extends JpaRepository<SerieUserEpisode, Long> {

	

	SerieUserEpisode findByEpisodeId(long idEpisode);

	SerieUserEpisode findByEpisodeIdAndSerieUserId(long id, long l);

	List<SerieUserEpisode> findBySerieUserId(long idSserieUser);
	
}