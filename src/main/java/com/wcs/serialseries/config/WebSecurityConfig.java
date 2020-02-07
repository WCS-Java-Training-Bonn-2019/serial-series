package com.wcs.serialseries.config;

import java.security.Principal;


import org.springframework.security.core.Authentication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.wcs.serialseries.service.UserDetailsServiceImpl;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	private final UserDetailsServiceImpl userDetailsService;

	private final PasswordEncoder passwordEncoder;

	public WebSecurityConfig(UserDetailsServiceImpl userDetailsService, PasswordEncoder passwordEncoder) {
		this.userDetailsService = userDetailsService;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		

		http
		.authorizeRequests().antMatchers("/listSeries/*", "/listSerieSeasonsEpisodes/**")
				.hasAnyRole("ADMIN", "JUNKY")
				.antMatchers("/", "/startSerialSeries", "/listSeries", "/FAQ", "/pictures/*", "/media/*", "/FAQ.css",
						"/global.css", "/login.css", "/header.css", "/listSeries.css", "/header.css",
						"/listSerieWithSeasonsAndEpisodes.css", "/start.css", "/webjars/**")
				.permitAll()
				.anyRequest()
				.authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/perform_login")
				.defaultSuccessUrl("/listSeries/", true)
				.failureUrl("/login-error")
				.permitAll()
				.and()
			.logout()
//				.logoutUrl("/perform_logout")
				.logoutSuccessUrl("/startSerialSeries")
				.deleteCookies("JSESSIONID")
				.permitAll()
				.and()
			.httpBasic();

	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
	}

}
