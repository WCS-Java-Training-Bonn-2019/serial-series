package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Episode {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name="episode_Nr")
	private int episodeNr;
	private String name;

	@ManyToOne
	@JoinColumn(name = "season_id")
	private Season season;

	@OneToMany(mappedBy = "episode")
	private List<SerieUserEpisode> serieUserEpisodes = new ArrayList<>();

	// Getter & Setter

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getEpisodeNr() {
		return episodeNr;
	}

	public void setEpisodeNr(int episodeNr) {
		this.episodeNr = episodeNr;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Season getSeason() {
		return season;
	}

	public void setSeason(Season season) {
		this.season = season;
	}

	public List<SerieUserEpisode> getSerieUserEpisodes() {
		return serieUserEpisodes;
	}

	public void setSerieUserEpisodes(List<SerieUserEpisode> serieUserEpisodes) {
		this.serieUserEpisodes = serieUserEpisodes;
	}

}
