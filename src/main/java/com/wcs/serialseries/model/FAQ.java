package com.wcs.serialseries.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FAQ {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
	String frage;
	@Column(columnDefinition="LONGTEXT")
	String antwort;
	
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getFrage() {
		return frage;
	}
	
	public void setFrage(String frage) {
		this.frage = frage;
	}
	
	public String getAntwort() {
		return antwort;
	}
	
	public void setAntwort(String antwort) {
		this.antwort = antwort;
	}
}
