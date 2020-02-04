package com.wcs.serialseries.form;

import java.util.List;

public class FormSeason {
		long id;
		int season_Nr;
		List <FormEpisode> episodes;
		
			
		
		/* Getter & Setter  */

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

		public List<FormEpisode> getEpisodes() {
			return episodes;
		}

		public void setEpisodes(List<FormEpisode> episodes) {
			this.episodes = episodes;
		}

		
		
		
		

		
		
	
}
