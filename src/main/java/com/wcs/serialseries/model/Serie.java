package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Serie {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	String picture_url;
	@Column(columnDefinition="LONGTEXT")
	String description;
	
	 // UserVerknüpfung
	 @OneToMany(mappedBy = "serie")
	 private List<SerieUser> serieUsers = new ArrayList<>();
	 
	 //Eine Serie hat mehrere Staffeln
	 @OneToMany(mappedBy = "serie")
	 private List<Season> seasons;
	

	// Getters & Setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicture_url() {
		return picture_url;
	}

	public void setPicture_url(String picture) {
		this.picture_url = picture;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String text) {
		this.description = text;
	}

	
	public List<SerieUser> getSerieUsers() {
		return serieUsers;
	}

	public void setSerieUsers(List<SerieUser> serieUsers) {
		this.serieUsers = serieUsers;
	}

	public List<Season> getSeasons() {
		return seasons;
	}

	public void setSeasons(List<Season> seasons) {
		this.seasons = seasons;
	}

	// ANYTHING ELSE
	@Override
	public String toString() {
		String sOutput;
		sOutput = "Serie [id=" + id + ", name=" + name + ", picture_url=" + picture_url + "]";
		sOutput += "Season(";
//		for (int i = 0; i < listOfSeasons.size(); i++) {
//			if (i == listOfSeasons.size() - 1)
//				sOutput += listOfSeasons.get(i).getId() + "/" + listOfSeasons.get(i).getName() + ")";
//			else
//				sOutput += listOfSeasons.get(i).getId() + "/" + listOfSeasons.get(i).getName() + ", ";
//		}
		return sOutput;
	}

}
