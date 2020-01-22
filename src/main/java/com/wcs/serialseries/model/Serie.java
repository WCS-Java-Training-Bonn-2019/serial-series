package com.wcs.serialseries.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Serie {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	String picture_url;
	String description;
	// List<Season> listOfSeasons = new ArrayList<Season>();

	

//	public Serie(long id, String name, String picture_url, String description, List<Season> listOfSeasons) {
//		super();
//		this.id = id;
//		this.name = name;
//		this.picture_url = picture_url;
//		this.description = description;
//		// this.listOfSeasons = listOfSeasons;
//	}

	public Serie(long id) {
		super();

		// this.listOfSeasons.clear();
//		List<Episode> folge1 = new ArrayList<Episode>();
//		List<Episode> folge2 = new ArrayList<Episode>();

		this.id = id;

		if (id == 1) {
			this.name = "Game of Thrones";
			this.picture_url = "/pictures/GoT.jpg";
			this.description = "Die Serie Game of Thrones basiert auf der Fantasy-Reihe „Das Lied von Eis und Feuer“ von George R.R. Martin. Die erste Season ist Bestandteil des ersten Buchs der Reihe und spielt im mittelalterlichen Westeros. König Robert Baratheon ist der Herrscher über die sieben Königreiche und Inhaber des eisernen Throns. Doch sein Reich befindet sich in Aufruhr. Sein Vertrauter Jon Arryn - die Hand des Königs - ist tot und es sieht nach Mord aus. Robert holt somit seinen besten Freund Sir Eddard Stark (Sean Bean) an den Königshof. „Ned“ Stark ist der Herrscher der Festung Winterfell und Beschützer des Nordens, der nur unwillig an den Intrigen reichen Hof in King's Landing gerufen wird. Dort beginnt das Spiel um die verschiedenen Throne des Landes. ";
//			folge1.add(new Episode(1, "Der Winter naht", true, false, 2));
//			folge1.add(new Episode(2, "Der Königsweg", true, false, 4));
//			folge1.add(new Episode(3, "Der Wolf un der Löwe", true, false, 0));
//			folge1.add(new Episode(4, "Krüppel, Bastarde und Zerbrochenes", true, false, 0));
//			folge1.add(new Episode(5, "Lord Schnee", false, false, 0));
			// listOfSeasons.add(new Season(1, "Staffel 1", folge1));

//			folge2.add(new Episode(6, "Der Norden vergißt nicht", true, false, 0));
//			folge2.add(new Episode(7, "Die Nachtlande", false, false, 0));
//			folge2.add(new Episode(8, "Was tot ist, kann niemals sterben", false, false, 0));
//			folge2.add(new Episode(9, "Garten der Knochen", true, false, 0));
//			folge2.add(new Episode(10, "Der Geist von Harrenhal", false, false, 0));
			// listOfSeasons.add(new Season(2, "Staffel 2", folge2));
		} else if (id == 2) {
			this.name = "The Wicher";
			this.picture_url = "/pictures/Witcher.jpg";
			this.description = "Sapkowskis achtteilige Romanreihe der „Witcher Saga“ dreht sich um Witchers, also Jäger, die in jungen Jahren übernatürliche Fähigkeiten entwickelt haben, um böse und gefährliche Monster zu jagen. Geralt von Riva erwacht bei Netflix zum Leben. Die Serienadaption von The Witcher basiert wie schon die Computer-Rollenspielreihe auf der Fantasysaga des polnischen Schriftstellers Andrzej Sapkowski.";
//			folge1.add(new Episode(1, "Wicher1", true, false, 0));
//			folge1.add(new Episode(2, "Wicher2", true, false, 0));
//			folge1.add(new Episode(3, "Wicher3", true, false, 0));
			// listOfSeasons.add(new Season(1, "Staffel 1", folge1));

//			folge2.add(new Episode(6, "Wicher4", true, false, 0));
//			folge2.add(new Episode(7, "Wicher5", false, false, 0));
//			folge2.add(new Episode(8, "WIcher6", false, false, 0));
//			listOfSeasons.add(new Season(2, "Staffel 2", folge2));
		} else if (id == 3) {
			this.name = "The Walking Dead";
			this.picture_url = "/pictures/TheWalkingDead.jpg";
			this.description = "Die US-Serie The Walking Dead ist eine Adaption der gleichnamigen Comicbuchreihe von Robert Kirkman. Darin geht es um eine Gruppe von Menschen, die nach der Apokalypse als letzte Überlebende in einer Welt bestehen muss, die von Zombies bevölkert wird. Im Mittelpunkt der Serie steht der Polizist Rick Grimes, der für sich und seine Mitstreiter eine dauerhafte sichere Zuflucht sucht und die zerstörte Gesellschaft neu aufbauen möchte.";
//			folge1.add(new Episode(1, "Walking1", true, false, 0));
//			listOfSeasons.add(new Season(1, "Staffel 1", folge1));
//
//			folge2.add(new Episode(2, "Walking2", true, false, 0));
//			listOfSeasons.add(new Season(2, "Staffel 2", folge2));
		} else if (id == 4) {
			this.name = "Outlander";
			this.picture_url = "/pictures/Outlander.jpg";
			this.description = "Keine Ahnung, voll blöd. Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla";
		} else if (id == 5) {
			this.name = "Mr. Robot";
			this.picture_url = "/pictures/Mr.Robot.jpg";
			this.description = "Keine Ahnung, voll blöd. Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla";
		} else if (id == 5) {
			this.name = "Blindspot";
			this.picture_url = "/pictures/Blindspot.jpg";
			this.description = "Keine Ahnung, voll blöd. Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla";
		} else {
			this.name = "Serie" + id;
			this.picture_url = "/pictures/serien.jpg";
			this.description = "Keine Ahnung, voll blöd. Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla";
		}

	}

	// Getters & Setters

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

	public void setPicture_url(String picture) {
		this.picture_url = picture;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String text) {
		this.description = text;
	}



	// ANYTHING ELSE
	@Override
	public String toString() {
		String sOutput;
		sOutput = "Serie [id=" + id + ", name=" + name + ", picture_url=" + picture_url + "]";
		sOutput += "Season(";
//		for (int i = 0; i < listOfSeasons.size(); i++) {
//			if (i == listOfSeasons.size() - 1)
//				sOutput += listOfSeasons.get(i).getId() + "/" + listOfSeasons.get(i).getName() + ")";
//			else
//				sOutput += listOfSeasons.get(i).getId() + "/" + listOfSeasons.get(i).getName() + ", ";
//		}
		return sOutput;
	}

}
