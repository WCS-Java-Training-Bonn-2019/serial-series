package com.wcs.serialseries.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.wcs.serialseries.model.Faq;

@Repository
public interface FaqRepository extends JpaRepository<Faq, Long> {

}
