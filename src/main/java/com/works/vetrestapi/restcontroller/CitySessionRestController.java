package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.model.CitySession;
import com.works.vetrestapi.redisrepositories.CitySessionRepository;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/redis")
public class CitySessionRestController {

    final CitySessionRepository cRepo;

    public CitySessionRestController(CitySessionRepository cRepo) {
        this.cRepo = cRepo;
    }

    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody CitySession citySession){
        Map<String , Object> hm = new LinkedHashMap<>();
        CitySession citySession1 =cRepo.save(citySession);
        hm.put("status", true);
        hm.put("result", citySession1);
        return hm;

    }

    @GetMapping("/list")
    public Map<String,Object> list(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        Iterable<CitySession> ls = cRepo.findAll();
        hm.put("result",ls);
        return hm;
    }
}
