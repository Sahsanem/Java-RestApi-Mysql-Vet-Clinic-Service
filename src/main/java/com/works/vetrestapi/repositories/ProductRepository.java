package com.works.vetrestapi.repositories;

import com.works.vetrestapi.entities.Product;
import com.works.vetrestapi.entities.ProductJoinVendor;
import com.works.vetrestapi.entities.VendorProductStock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Integer> {


    @Query(value = "select pro.PRODUCT_NAME,pro.PRODUCT_ID from PRODUCT as pro INNER JOIN VENDOR as v on pro.VENDOR_VID = v.ID WHERE v.ID= ?1",nativeQuery = true)
    List<ProductJoinVendor> productJoinVendor(int id);

    @Query(value = "   select v.VENDOR_NAME as name , ((pro.PRODUCT_BUYING * s.AMOUNT)-((pro.PRODUCT_BUYING * s.AMOUNT)*pro.PRODUCT_KDV/100)) as total from PRODUCT as pro INNER JOIN VENDOR as v on pro.VENDOR_VID = v.ID INNER JOIN STOCK as s on pro.PRODUCT_ID=s.PRODUCT WHERE  pro.PRODUCT_ID = ?1",nativeQuery = true)
    List<VendorProductStock> vendorJoinProductJoinStock(int product_id);


}