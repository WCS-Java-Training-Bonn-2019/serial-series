package com.wcs.serialseries.form;

public class FormEpisode {
	long id;
	String name;
	boolean watched;
	boolean wanna_c;
	int ranking;
	
	/* Constructor */
	
	public FormEpisode(long episodeId, String name, boolean watched, boolean wanna_c, int ranking) {
		super();
		this.id = episodeId;
		this.name = name;
		this.watched = watched;
		this.wanna_c = wanna_c;
		this.ranking = ranking;
	}
	
	/* Getter & Setter */
	public long getId() {
		return id;
	}
	
	public void setId(long episodeId) {
		this.id = episodeId;
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
