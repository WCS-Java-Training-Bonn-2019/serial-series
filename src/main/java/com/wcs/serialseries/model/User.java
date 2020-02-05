package com.wcs.serialseries.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import static java.util.Collections.singletonList;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;



@Entity
public class User implements UserDetails {
	

	private static final long serialVersionUID = -1987953842734862009L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String username;
	private String password;
	
	
	@OneToMany(mappedBy = "user")
	private List<SerieUser> serieUsers = new ArrayList<>();
	 
	 
	
// kein Constuctor!!!


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public void setUsername(String name) {
		this.username = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public List<SerieUser> getSerieUsers() {
		return serieUsers;
	}


	public void setSerieUsers(List<SerieUser> serieUsers) {
		this.serieUsers = serieUsers;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_JUNKY");
		return singletonList(authority);
	}

	@Override
	public String getUsername() {
		return username;
	}
		
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}	
	
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
}
