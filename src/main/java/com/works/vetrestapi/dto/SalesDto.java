package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.*;
import com.works.vetrestapi.repositories.*;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class SalesDto {
    final ProductRepository pRepo;
    final BoxRepository bRepo;
    final Util util;
    final RetailSaleRepository rRepo;
    final CustomerRepository cRepo;
    final CustomerPaySaleRepository cpRepo;
    final BoxCustomerRepository bcRepo;
    public SalesDto(ProductRepository pRepo, BoxRepository bRepo, Util util, RetailSaleRepository rRepo, CustomerRepository cRepo, CustomerPaySaleRepository cpRepo, BoxCustomerRepository bcRepo) {
        this.pRepo = pRepo;
        this.bRepo = bRepo;
        this.util = util;
        this.rRepo = rRepo;
        this.cRepo = cRepo;
        this.cpRepo = cpRepo;
        this.bcRepo = bcRepo;
    }


    public Map<String,Object> productList(){
        Map<String ,Object> hm=new LinkedHashMap<>();
        hm.put("status",true);
        List<Product> ls = pRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String,Object> customerList(){
        Map<String ,Object> hm=new LinkedHashMap<>();
        hm.put("status",true);
        List<Customer> ls = cRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> BoxAdd(Box box, BindingResult bResult) {
        Map<String , Object> hm = new LinkedHashMap<>();
        if(!bResult.hasErrors()){
            try {
                Box boxDb = bRepo.save(box);
                hm.put("status", true);
                hm.put("message", "Ekleme başarılı");
                hm.put("result", boxDb);
            } catch (Exception e) {
                hm.put("status", false);
            }

        }else{
            hm.put("status",false);
            hm.put("errors", util.errors(bResult));
        }

        return hm;
    }

    public Map<String, Object> RetailSaleAdd (RetailSale retailSale, String box_id, String sales_product_amount, BindingResult bResult) {
        Map<String , Object> hm = new LinkedHashMap<>();
        if(!bResult.hasErrors()){
            try {
                int cuid = Integer.parseInt(box_id);
                int sp = Integer.parseInt(sales_product_amount);
                List<ProductJoinBox> saleTotal = bRepo.productJoinBox(cuid,sp);
                saleTotal.forEach(item->{
                    retailSale.setSaletotal(item.getTotal());
                    retailSale.setProduct_name(item.getProduct_Name());
                    System.out.println(item.getTotal());
                    System.out.println(item.getProduct_Name());
                });
                RetailSale retailSale1 = rRepo.save(retailSale);

                hm.put("status", true);
                hm.put("message", "Ekleme başarılı");
                hm.put("result", retailSale1);

            } catch (Exception e) {
                hm.put("status", false);
            }

        }else{
            hm.put("status",false);
            hm.put("errors", util.errors(bResult));
        }

        return hm;
    }


    //Kayıtlı Müşteri Listeleme
    public Map<String,Object> customerPayList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<CustomerPaySale> ls = cpRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Kayıtlı Müşteri sepete ekleme (box_customer)
    public Map<String, Object> boxCustomerAdd(BoxCustomer boxCustomer, BindingResult bResult) {
        Map<String , Object> hm = new LinkedHashMap<>();
        if(!bResult.hasErrors()){
            try {
                BoxCustomer boxc1 = bcRepo.save(boxCustomer);
                hm.put("status", true);
                hm.put("message", "Ekleme başarılı");
                hm.put("result", boxc1);
            } catch (Exception e) {
                hm.put("status", false);
            }

        }else{
            hm.put("status",false);
            hm.put("errors", util.errors(bResult));
        }
        return hm;
    }

    //Kayıtlı Müşteri Ödeme kısmı hesaplanıp eklenilmesi
    public Map<String, Object> CustomerPaySaleAdd (CustomerPaySale customerPaySale, String pid, String sale_amount, String cid) {
        Map<String , Object> hm = new LinkedHashMap<>();

        try {
            int cuid = Integer.parseInt(pid);
            int cus_id = Integer.parseInt(cid);
            int sp = Integer.parseInt(sale_amount);
            List<ProductBoxCustomer>  customerSaleTotal = bcRepo.productJoinBoxCustomer(cuid,sp,cus_id);
            customerSaleTotal.forEach(item->{
                customerPaySale.setCname(item.getCName());
                customerPaySale.setSaleBoxtotal(item.getTotal());
                System.out.println(item.getCName());
                System.out.println(item.getTotal());

            });
            CustomerPaySale customerPaySale1 = cpRepo.save(customerPaySale);

            hm.put("status", true);
            hm.put("message", "Ekleme başarılı");
            hm.put("result", customerPaySale1);

        } catch (Exception e) {
            hm.put("status", false);
        }


        return hm;
    }


}
