package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.FarmVaccine;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FarmVaccineRepository extends JpaRepository<FarmVaccine,Integer> {
}
