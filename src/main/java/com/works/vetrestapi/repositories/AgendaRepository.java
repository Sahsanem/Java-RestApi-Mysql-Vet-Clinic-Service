package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.Agenda;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AgendaRepository extends JpaRepository<Agenda,Integer> {
}
