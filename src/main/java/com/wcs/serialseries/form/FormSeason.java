package com.wcs.serialseries.form;

import java.util.List;

public class FormSeason {
		long id;
		List <FormEpisode> episodes;
		
			
		
		/* Getter & Setter  */

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public List<FormEpisode> getEpisodes() {
			return episodes;
		}

		public void setEpisodes(List<FormEpisode> episodes) {
			this.episodes = episodes;
		}

		
		
		
		

		
		
	
}
