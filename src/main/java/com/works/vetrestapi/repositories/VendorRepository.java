package com.works.vetrestapi.repositories;


import com.works.vetrestapi.model.Vendor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VendorRepository extends JpaRepository<Vendor,Integer> {
}
