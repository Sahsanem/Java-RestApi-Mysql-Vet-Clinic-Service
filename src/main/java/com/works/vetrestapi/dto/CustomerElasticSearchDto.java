package com.works.vetrestapi.dto;

import com.works.vetrestapi.model.CustomerDoc;
import com.works.vetrestapi.repositories.CustomerDocRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CustomerElasticSearchDto {
    final CustomerDocRepository cdRepo;

    public CustomerElasticSearchDto(CustomerDocRepository cdRepo) {
        this.cdRepo = cdRepo;
    }
    public Map<String, Object> add(CustomerDoc cd){
        Map<String,Object> hm=new LinkedHashMap<>();
        CustomerDoc cdDb = cdRepo.save(cd);
        hm.put("status", true);
        hm.put("message", "Ekleme Başarılı");
        hm.put("result", cdDb);
        return hm;
    }


    public Map<String, Object> list(){
        Map<String, Object> hm = new LinkedHashMap<>();
        hm.put("status", true);
        Iterable<CustomerDoc> iterableLs = cdRepo.findAll();
        List<CustomerDoc> customerList = new ArrayList<>();
        iterableLs.forEach(customerList::add);
        hm.put("result",customerList);
        return hm;
    }


    public Map<String, Object> delete(String strIndex){
        Map<String, Object> hm = new HashMap<>();
        try{
            if(cdRepo.existsById(strIndex)){
               cdRepo.deleteById(strIndex);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", strIndex);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", strIndex);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", strIndex);
        }
        return hm;
    }



    public Map<String, Object> search(String data) {
        Map<String, Object> hm = new LinkedHashMap<>();
        Page<CustomerDoc> searchPage = cdRepo.findByName(data, PageRequest.of(0, 10));
        List<CustomerDoc> customerList = searchPage.getContent();
        hm.put("status", true);
        hm.put("result",customerList);
        return hm;
    }
}
