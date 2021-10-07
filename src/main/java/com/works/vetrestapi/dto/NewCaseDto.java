package com.works.vetrestapi.dto;


import com.works.vetrestapi.entities.NewCase;
import com.works.vetrestapi.repositories.CaseRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewCaseDto {
    final CaseRepository cRepo;
    final Util util;

    public NewCaseDto(CaseRepository cRepo, Util util) {
        this.cRepo = cRepo;
        this.util = util;
    }

    public Map<String,Object> caseAdd(NewCase newCase, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                NewCase newCase1 = cRepo.save(newCase);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",newCase1);
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
        List<NewCase> ls = cRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> caseDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int case_id= Integer.parseInt(strIndex);
        try{
            if(cRepo.existsById(case_id)){
                cRepo.deleteById(case_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", case_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", case_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", case_id);
        }
        return hm;
    }
}
