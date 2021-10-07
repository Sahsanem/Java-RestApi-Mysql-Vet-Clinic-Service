package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.NewCase;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CaseRepository extends JpaRepository<NewCase,Integer> {
}

