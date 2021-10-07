package com.works.vetrestapi.repositories;


import com.works.vetrestapi.entities.RetailSale;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface RetailSaleRepository extends JpaRepository<RetailSale,Integer> {

    @Query(value = "select SUM(saletotal) as s1 from RETAIL_SALE ",nativeQuery = true)
    int retailSale();

    @Query(value = "select  COUNT(rid) from RETAIL_SALE ",nativeQuery = true)
    int countSale();
}
