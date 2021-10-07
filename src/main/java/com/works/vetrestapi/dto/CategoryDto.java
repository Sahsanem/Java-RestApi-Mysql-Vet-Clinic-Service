package com.works.vetrestapi.dto;


import com.works.vetrestapi.entities.CategoryGroup;
import com.works.vetrestapi.repositories.CategoryGroupRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class CategoryDto {
    final CategoryGroupRepository cRepo;
    final Util util;
    public CategoryDto(CategoryGroupRepository cRepo, Util util) {
        this.cRepo = cRepo;
        this.util = util;
    }

    public Map<String,Object> categoryAdd(CategoryGroup categoryGroup, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                CategoryGroup categoryGroup1 = cRepo.save(categoryGroup);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",categoryGroup1);
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
        List<CategoryGroup> ls = cRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> categoryDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int cg_id= Integer.parseInt(strIndex);
        try{
            if(cRepo.existsById(cg_id)){
                cRepo.deleteById(cg_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result",cg_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", cg_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", cg_id);
        }
        return hm;
    }

}

