package com.works.vetrestapi.repositories;

import com.works.vetrestapi.entities.Buying;
import com.works.vetrestapi.entities.BuyingJoinCustomer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BuyingRepository extends JpaRepository<Buying,Integer> {

    @Query(value = "select SUM(total) as b from BUYING  ",nativeQuery = true)
    int customerBuying();



    @Query(value = " select b.BUYING_DATE as calendar,c.CUSTOMER_PROCESS as process, (SUM(sale_boxtotal)-Sum(total)) as total from CUSTOMER_PAY_SALE as c INNER JOIN BUYING as b on c.CUSTOMER_PROCESS = b.PROCESS GROUP BY CUSTOMER_PROCESS ",nativeQuery = true)
    List<BuyingJoinCustomer> listprocess();
}
