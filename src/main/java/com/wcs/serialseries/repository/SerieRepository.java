package com.wcs.serialseries.repository;


import java.util.ArrayList;
import java.util.List;

import com.wcs.serialseries.model.Serie;


public class SerieRepository {

	public List<Serie> findAll() {

		List<Serie> series = new ArrayList<>();

		series.clear(); // zur Sicherheit
		series.add(new Serie(1));
		series.add(new Serie(2));
		series.add(new Serie(3));

		series.add(new Serie(4));
		series.add(new Serie(5));
		series.add(new Serie(6));
		series.add(new Serie(7));
		series.add(new Serie(8));
		series.add(new Serie(9));
		series.add(new Serie(10));
		series.add(new Serie(11));

		return series;

	}

	public List<Serie> findSeriesByUserId(Long id) {

		List<Serie> series = new ArrayList<>();

		if (id == 1) {
			// Meine Serien zukünftig natürlich aus DB
			series.add(new Serie(1));
			series.add(new Serie(2));
			series.add(new Serie(3));

		} else {
			// Alle Serien
			series.add(new Serie(1));
			series.add(new Serie(2));
			series.add(new Serie(3));

			series.add(new Serie(4));
			series.add(new Serie(5));
			series.add(new Serie(6));
			series.add(new Serie(7));
			series.add(new Serie(8));
			series.add(new Serie(9));
			series.add(new Serie(10));
			series.add(new Serie(11));

		}
		return series;

	}

	public List<Serie> findNewSeriesByUserId(Long id) {

		List<Serie> series = new ArrayList<>();

		if (id == 1) {
			// Meine Serien zukünftig natürlich aus DB
			series.add(new Serie(4));
			series.add(new Serie(5));
			series.add(new Serie(6));
			series.add(new Serie(7));
			series.add(new Serie(8));
			series.add(new Serie(9));
			series.add(new Serie(10));
			series.add(new Serie(11));

		} else {
			// Alle Serien
			series.add(new Serie(12));

		}
		return series;

	}

	public Serie findSerieBySerieId(Long id) {

		Serie serie;

		return new Serie(id);

	}

	public void deleteSeriesByUserIdAndSerieId(Long idUser, Long idSerie) {

		// Löschen *//
		System.out.println("Löschen von folgendem Eintrag -- User: " + idUser + " Serie: " + idSerie);

		return;
	}

	public void newSerieForUser(Long idUser, Long idSerie) {

		// Hinzufügen zu meine Serien *//
		System.out.println("Hinzufügen von folgender Serie -- User: " + idUser + " Serie: " + idSerie);

		return;
	}

}
