package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class SerieUser {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name="serieId")
    private Serie serie;

    @ManyToOne
    @JoinColumn(name="userId")
    private User user;
    
    @OneToMany(mappedBy = "serieUser", cascade=CascadeType.REMOVE)
	private List<SerieUserEpisode> serieUserEpisodes = new ArrayList<>();
        

       
    //Getter & Setter
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Serie getSerie() {
		return serie;
	}

	public void setSerie(Serie serie) {
		this.serie = serie;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<SerieUserEpisode> getSerieUserEpisodes() {
		return serieUserEpisodes;
	}

	public void setSerieUserEpisodes(List<SerieUserEpisode> serieUserEpisodes) {
		this.serieUserEpisodes = serieUserEpisodes;
	}
    
    

}
