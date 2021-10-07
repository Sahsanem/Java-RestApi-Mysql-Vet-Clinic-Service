package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.Animal;
import com.works.vetrestapi.entities.AnimalCustomer;
import com.works.vetrestapi.entities.Animals;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnimalRepository extends JpaRepository<Animal,Integer> {

    @Query(value = "select a.P_NAME,a.AID from ANIMAL as a INNER JOIN CUSTOMER as c ON c.C_NO=a.CUS_NO WHERE a.CUS_NO=?1",nativeQuery = true)
    List<AnimalCustomer> animalCustomer(int cus_no);


    @Query(value = "select COUNT( AID) as totalAnmal from ANIMAL",nativeQuery = true)
    List<Animals> totalAnimal();


}
