package com.works.vetrestapi.dto;


import com.works.vetrestapi.entities.Depo;
import com.works.vetrestapi.repositories.DepoRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


@Service
public class DepoDto {
    final DepoRepository dRepo;
    final Util util;

    public DepoDto(DepoRepository dRepo, Util util) {
        this.dRepo = dRepo;
        this.util = util;
    }

    //Depo ekleme

    public Map<String,Object> DepoAdd(Depo depo, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                Depo depo1 = dRepo.save(depo);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",depo1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String,Object> list(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Depo> ls = dRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> depoDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int depo_id= Integer.parseInt(strIndex);
        try{
            if(dRepo.existsById(depo_id)){
                dRepo.deleteById(depo_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", depo_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", depo_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", depo_id);
        }
        return hm;
    }

}
