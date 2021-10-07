package com.works.vetrestapi.dto;


import com.works.vetrestapi.entities.Agenda;
import com.works.vetrestapi.repositories.AgendaRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class AgendaDto {

    final AgendaRepository aRepo;
    final Util util;

    public AgendaDto(AgendaRepository aRepo, Util util) {
        this.aRepo = aRepo;
        this.util = util;
    }

    //Ajanda Ekleme
    public Map<String, Object> add(Agenda agenda, BindingResult bResult) {
        Map<String , Object> hm = new LinkedHashMap<>();
        if(!bResult.hasErrors()){
            try {
                Agenda agendaDb = aRepo.save(agenda);
                hm.put("status", true);
                hm.put("message", "Ekleme başarılı");
                hm.put("result", agendaDb);
            } catch (Exception e) {
                hm.put("status", false);
            }

        }else{
            hm.put("status",false);
            hm.put("errors", util.errors(bResult));
        }

        return hm;
    }

    //ajanda listeleme
    public Map<String,Object> Agendalist(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Agenda> ls = aRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Ajanda silme
    public Map<String, Object> delete (String strIndex){
        Map<String, Object> hm = new HashMap<>();
        int cuid = Integer.parseInt(strIndex);
        try{
            if(aRepo.existsById(cuid)){
                aRepo.deleteById(cuid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", cuid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", cuid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", cuid);
        }
        return hm;
    }



}
