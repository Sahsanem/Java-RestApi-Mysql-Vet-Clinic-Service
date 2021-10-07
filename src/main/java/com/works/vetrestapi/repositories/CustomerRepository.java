package com.works.vetrestapi.repositories;

import com.works.vetrestapi.entities.Customer;
import com.works.vetrestapi.entities.Customers;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer,Integer> {

    @Query(value = "from Customer as c where c.cname like concat('%', ?1, '%')")
    List<Customer> findByC_name(String c_name);

    @Query(value = "select COUNT( CID) as totalCustomer from CUSTOMER",nativeQuery = true)
    List<Customers> totalCustomer();

    List<Customer> findByOrderByCidAsc(Pageable pageable);

    List<Customer> findByCnameContainsOrCsurnameContainsAllIgnoreCaseOrderByCidAsc(String cname, String csurname, Pageable pageable);



    long countByCnameContainsOrCsurnameContainsAllIgnoreCase(String cname, String csurname);





}
