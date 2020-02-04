package com.wcs.serialseries.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class SerieUserEpisode {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne
	@JoinColumn(name="episopdeId")
	private Episode episode;

	@ManyToOne
	@JoinColumn(name="serieUserId")
	private SerieUser serieUser;
	
	boolean watched;
	boolean wanna_c;
	int ranking;
	
	
	/* Getter & Setter */
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Episode getEpisode() {
		return episode;
	}
	public void setEpisode(Episode episode) {
		this.episode = episode;
	}
	public SerieUser getSerieUser() {
		return serieUser;
	}
	public void setSerieUser(SerieUser serieUser) {
		this.serieUser = serieUser;
	}
	public boolean isWatched() {
		return watched;
	}
	public void setWatched(boolean watched) {
		this.watched = watched;
	}
	public boolean isWanna_c() {
		return wanna_c;
	}
	public void setWanna_c(boolean wanna_c) {
		this.wanna_c = wanna_c;
	}
	public int getRanking() {
		return ranking;
	}
	public void setRanking(int ranking) {
		this.ranking = ranking;
	}

}
