package com.wcs.serialseries.model;

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
public class Season {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Column(name="season_Nr")
    private int seasonNr;
		
	
	//Eine Staffel gehört zu genau iner Serie
	@ManyToOne
    @JoinColumn(name = "serie_id")
    private Serie serie;
	
	//Eine Staffel hat mehrere Episoden
	@OneToMany(mappedBy = "season")
	private List<Episode> episodes;

// Getters & Setters	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	
	public int getSeasonNr() {
		return seasonNr;
	}

	public void setSeasonNr(int seasonNr) {
		this.seasonNr = seasonNr;
	}

	public Serie getSerie() {
		return serie;
	}

	public void setSerie(Serie serie) {
		this.serie = serie;
	}

	public List<Episode> getEpisodes() {
		return episodes;
	}

	public void setEpisodes(List<Episode> episodes) {
		this.episodes = episodes;
	}
	
}
