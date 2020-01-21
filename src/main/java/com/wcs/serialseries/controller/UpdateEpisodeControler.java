package com.wcs.serialseries.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wcs.serialseries.model.Serie;
import com.wcs.serialseries.repository.SerieRepository;

@Controller
public class UpdateEpisodeControler {

	// Seite wird über http://localhost:8080/listSeriens/1
	// http://localhost:8080/listSeries aufgerufen.
	private SerieRepository repository = new SerieRepository();


	@GetMapping("/listSerieSeasonsEpisodes/{id}")
	public String showSerie(@PathVariable long id, Model model) {
		model.addAttribute("Serie", repository.findSerieBySerieId(id)); 
		return "listSerieWithSeasonsAndEpisodes.html";
	}

	@PostMapping("/listSerieSeasonsEpisodes")
	public String postStaffeln(@ModelAttribute("Serie") Serie serie,
			@RequestParam(value = "seen", required = false) int[] seen,
			@RequestParam(value = "wanted", required = false) int[] wanted) {
		

		// Liste der gesehenen Folgen aktualisieren
		if (seen != null) {
			for (int ittChecked = 0; ittChecked < seen.length; ittChecked++) {
				// Richtige Episode der richtigen Season der richtigen Serie auf gesehen setzen
				// alle Staffeln itterieren
				for (int ittStaffel = 0; ittStaffel < serie.getListOfSeasons().size(); ittStaffel++) {
					// alle Folgen itterieren
					for (int ittFolge = 0; ittFolge < serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes()
							.size(); ittFolge++) {
						// alle Folgen itterieren
						if (seen[ittChecked] == serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).getId())
							serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).setWatched(true);
					}
				}
			}

		}

		// Liste der gewünschten Folgen aktualisieren
		if (wanted != null) {
			for (int ittChecked = 0; ittChecked < wanted.length; ittChecked++) {
				// Richtige Episode der richtigen Season der richtigen Serie auf gesehen setzen
				// alle Staffeln itterieren
				for (int ittStaffel = 0; ittStaffel < serie.getListOfSeasons().size(); ittStaffel++) {
					// alle Folgen itterieren
					for (int ittFolge = 0; ittFolge < serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes()
							.size(); ittFolge++) {
						// alle Folgen itterieren
						if (wanted[ittChecked] == serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).getId())
							serie.getListOfSeasons().get(ittStaffel).getListOfEpisodes().get(ittFolge).setWanted(true);
					}
				}
			}

		}

		return "listSerieWithSeasonsAndEpisodes.html";
		//return "redirect:/listSerieSeasonsEpisodes/" + serie.getId();

	}

}
