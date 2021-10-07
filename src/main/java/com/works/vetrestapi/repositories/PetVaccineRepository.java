package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.PetVaccine;
import org.springframework.data.jpa.repository.JpaRepository;


public interface PetVaccineRepository extends JpaRepository<PetVaccine,Integer> {

}
