package com.wcs.serialseries.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.wcs.serialseries.model.User;
import com.wcs.serialseries.model.user.AdminUserDetails;
import com.wcs.serialseries.repository.UserRepository;



@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	private final UserRepository userRepository;
	private final String adminPassword;

	@Autowired
	public UserDetailsServiceImpl(UserRepository userRepository, @Value("${admin.password}") String adminPassword) {
		this.userRepository = userRepository;
		this.adminPassword = adminPassword;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		if ("admin".equals(username)) {
			return getAdminUserDetails();
		}
		return loadCustomerByName(username);
	}

	private UserDetails getAdminUserDetails() {
		return new AdminUserDetails("admin", adminPassword);
	}

	private UserDetails loadCustomerByName(String username) {
		Optional<User> optionalUser = userRepository.findByUsername(username);
		if (optionalUser.isPresent()) {
			return optionalUser.get();
		}
		throw new UsernameNotFoundException("User '" + username + "' not found.");
	}
}
