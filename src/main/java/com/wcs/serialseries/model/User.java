package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;



@Entity
public class User {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String name;
	
	 @OneToMany(mappedBy = "user")
	 private List<SerieUser> serieUsers = new ArrayList<>();
	
// kein Constuctor!!!


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


	public List<SerieUser> getSerieUsers() {
		return serieUsers;
	}


	public void setSerieUsers(List<SerieUser> serieUsers) {
		this.serieUsers = serieUsers;
	}
	
}
