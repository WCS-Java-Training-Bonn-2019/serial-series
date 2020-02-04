package com.wcs.serialseries.model;

import java.util.List;

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
	long id;
	int season_Nr;
		
	
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

	
	public int getSeason_Nr() {
		return season_Nr;
	}

	public void setSeason_Nr(int season_Nr) {
		this.season_Nr = season_Nr;
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
