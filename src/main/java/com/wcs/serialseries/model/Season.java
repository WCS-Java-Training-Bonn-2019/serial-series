package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.List;

import com.wcs.serialseries.model.Episode;

public class Season {

	long id;
	String name;
	List<Episode> listOfEpisodes = new ArrayList<Episode>();

	// Constructors

	public Season() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Season(long id, String name, List<Episode> listOfEpisodes) {
		super();
		this.id = id;
		this.name = name;
		this.listOfEpisodes = listOfEpisodes;
	}

	// Getters & Setters

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Episode> getListOfEpisodes() {
		return listOfEpisodes;
	}

	public void setListOfEpisodes(List<Episode> listOfEpisodes) {
		this.listOfEpisodes = listOfEpisodes;
	}

}
