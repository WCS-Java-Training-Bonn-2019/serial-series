package com.wcs.serialseries.model;

public class Episode {
	
	long id;
	String name;
	boolean watched;
	boolean wanted;
	int ranking;
	
	// Constructors
	public Episode() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Episode(long id, String name, boolean watched, boolean wanted, int ranking) {
		super();
		this.id = id;
		this.name = name;
		this.watched = watched;
		this.wanted = wanted;
		this.ranking = ranking;
	}

	// Getter & Setter
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

	public boolean isWatched() {
		return watched;
	}

	public void setWatched(boolean watched) {
		this.watched = watched;
	}

	public boolean isWanted() {
		return wanted;
	}

	public void setWanted(boolean wanted) {
		this.wanted = wanted;
	}

	public int getRanking() {
		return ranking;
	}

	public void setRanking(int ranking) {
		this.ranking = ranking;
	}
	
		

}
