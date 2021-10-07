package com.works.vetrestapi.repositories;

import com.works.vetrestapi.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role,Integer> {
}
