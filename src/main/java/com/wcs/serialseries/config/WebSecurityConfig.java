package com.wcs.serialseries.config;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;


@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
	    http
	.authorizeRequests()
		.antMatchers("/listSeries/*", "/listSerieSeasonsEpisodes/**").hasAnyRole("ADMIN","JUNKY")
		.antMatchers("/", "/startSerialSeries", 
    		"/listSeries", "/FAQ", "/pictures/*", "/media/*", 
    		"/FAQ.css", "/global.css", "/header.css", "/listSeries.css", "/header.css", "/listSerieWithSeasonsAndEpisodes.css", "/start.css" ,  
    		"/webjars/**").permitAll()
		.anyRequest().authenticated()
        .and()
    .formLogin()
        .and()
    .httpBasic();
		
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		
		auth.inMemoryAuthentication()
	    .withUser("Metje")
	        .password(encoder.encode("1234"))
	        .roles("ADMIN")
	        .and()
		 .withUser("Ralf")
	        .password(encoder.encode("1234"))
	        .roles("JUNKY");
			
	}
	
}


