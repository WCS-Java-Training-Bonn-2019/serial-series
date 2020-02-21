package com.wcs.serialseries.form;

import java.util.List;

public class FormSeason {
		private long id;
		private int seasonNr;
		private List <FormEpisode> episodes;
		
			
		
		/* Getter & Setter  */

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public int getSeasonNr() {
			return seasonNr;
		}

		public void setSeasonNr(int seasonNr) {
			this.seasonNr = seasonNr;
		}

		public List<FormEpisode> getEpisodes() {
			return episodes;
		}

		public void setEpisodes(List<FormEpisode> episodes) {
			this.episodes = episodes;
		}

		
		
		
		

		
		
	
}
