package com.wcs.serialseries.form;

public class FormEpisode {
	private long id;
	private int episode_Nr;
	private String name;
	private boolean watched;
	private boolean wanna_c;
	private int ranking;
	
		
	/* Getter & Setter */
	public long getId() {
		return id;
	}
	
	public void setId(long episodeId) {
		this.id = episodeId;
	}
	public int getEpisode_Nr() {
		return episode_Nr;
	}

	public void setEpisode_Nr(int episode_Nr) {
		this.episode_Nr = episode_Nr;
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
