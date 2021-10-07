package com.works.vetrestapi.repositories;

import com.works.vetrestapi.entities.Log;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LogRepository extends JpaRepository<Log,Integer> {
}
