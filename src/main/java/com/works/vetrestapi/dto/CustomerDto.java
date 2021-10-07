package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.Customer;
import com.works.vetrestapi.repositories.CustomerRepository;

import com.works.vetrestapi.util.Util;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class CustomerDto {
    final CustomerRepository cRepo;
    final Util util;
    public CustomerDto(CustomerRepository cRepo, Util util) {
        this.cRepo = cRepo;
        this.util = util;
    }

    public Map<String, Object> add(Customer customer, BindingResult bindingResult) {
        Map<String,Object> hm=new LinkedHashMap<>();
        if(bindingResult.hasErrors()){
            hm.put("status",false);
            hm.put("message",util.errors(bindingResult));
        }else {
            hm.put("status", true);
            hm.put("message","Ekleme Başarılı!");
           Customer c = cRepo.save(customer);
            hm.put("customer", c);

        }
        return hm;
    }

    public Map<String, Object> list( String pageNumber ) {
        Map<String, Object> hm = new LinkedHashMap<>();
        try {
            int ipageNumber = Integer.parseInt(pageNumber);
            Pageable pageable = PageRequest.of(ipageNumber, 10);
            List<Customer> pageList =cRepo.findByOrderByCidAsc(pageable);
            long totalcount = cRepo.count();
            hm.put("status", true);
            hm.put("message", "Sayfalama işlemi başarılı!");
            hm.put("totalSize", totalcount );
            hm.put("pageStatus", (10 * ipageNumber) + "- " + 10 );
            hm.put("result", pageList);
        }catch (Exception ex) {
            hm.put("status", false);
            hm.put("message", "Sayfalama işlemi sırasında hata oluştu!");
        }
        return hm;
    }

    public Map<String, Object> delete (String strCid){
        Map<String, Object> hm = new HashMap<>();
        int cid = Integer.parseInt(strCid);
        try{
            if(cRepo.existsById(cid)){
                cRepo.deleteById(cid);
                hm.put("status", true);
                hm.put("message", "Silme işlemi başarılı!");
                hm.put("result", cid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", cid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme işlemi gerçekleşmedi");
            hm.put("result", cid);
        }
        return hm;
    }




}
