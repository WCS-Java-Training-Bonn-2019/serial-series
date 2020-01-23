package com.wcs.serialseries.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wcs.serialseries.model.SerieUser;

@Repository
public interface SerieUserRepository extends JpaRepository<SerieUser, Long> {
}

