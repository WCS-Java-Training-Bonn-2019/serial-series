package com.wcs.serialseries.config;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
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
		.authorizeRequests().antMatchers("/listMySeries", "/listSerieSeasonsEpisodes/**")
				.hasAnyRole("ADMIN", "JUNKY")
        .antMatchers("/", "/startSerialSeries", "/listAllSeries", "/listSearch", "/editUser","/upsetUser", "/listSearch/*",
						"/faq", "/aboutUs","/pictures/*", "/media/*", "/register-error", "/faq.css",
						"/global.css", "/login.css", "/header.css", "/list_series.css", "/about_us.css",
						"/list_serie_with_seasons_and_episodes.css", "/start.css", "/webjars/**")
				.permitAll()
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/perform_login")
				.defaultSuccessUrl("/startSerialSeries", true)
				.failureUrl("/login-error")
				.permitAll()
				.and()
			.logout()
				.logoutSuccessUrl("/startSerialSeries")
				.deleteCookies("JSESSIONID")
				.permitAll()
				.and()
			.httpBasic();
	}


	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
	}

}
