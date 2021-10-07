package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.CalendarInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CalendarInfoRepository extends JpaRepository<CalendarInfo,Integer> {
}
