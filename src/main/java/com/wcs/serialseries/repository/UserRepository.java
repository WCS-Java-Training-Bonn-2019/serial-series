package com.wcs.serialseries.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	
}


