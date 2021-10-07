package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.Buying;
import com.works.vetrestapi.entities.CustomerPaySale;
import com.works.vetrestapi.repositories.BuyingRepository;
import com.works.vetrestapi.repositories.CustomerPaySaleRepository;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class PayActionDto {
    final BuyingRepository bRepo;
    final CustomerPaySaleRepository cpRepo;

    public PayActionDto(BuyingRepository bRepo, CustomerPaySaleRepository cpRepo) {
        this.bRepo = bRepo;
        this.cpRepo = cpRepo;
    }

    //Para Girişi liste
    public Map<String,Object> payInList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Buying> ls = bRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Para Çıkışı liste
    public Map<String,Object> payOutList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<CustomerPaySale> ls = cpRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Ödeme türüne göre listeleme
    public Map<String,Object> payActionProcess(String process_id){
        Map<String,Object> hm = new LinkedHashMap<>();
        int cuid = Integer.parseInt(process_id);
        hm.put("status",true);
        List<CustomerPaySale> ls = cpRepo.process(cuid);
        hm.put("result",ls);
        return hm;
    }

}
