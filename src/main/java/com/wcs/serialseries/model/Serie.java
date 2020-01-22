package com.wcs.serialseries.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Serie {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	String picture_url;
	String description;

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
