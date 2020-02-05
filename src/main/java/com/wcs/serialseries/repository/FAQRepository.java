package com.wcs.serialseries.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.wcs.serialseries.model.FAQ;

@Repository
public interface FAQRepository extends JpaRepository<FAQ, Long> {

}
