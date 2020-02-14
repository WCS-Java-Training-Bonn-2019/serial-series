package com.wcs.serialseries.form;

import java.util.List;


public class FormSerie {
	private Long id;
	private String name;
	private String picture_url;
	private String description;
	
	private List <FormSeason> seasons;




	/* Getter & Setter */
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

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<FormSeason> getSeasons() {
		return seasons;
	}

	public void setSeasons(List<FormSeason> seasons) {
		this.seasons = seasons;
	}
	

}



