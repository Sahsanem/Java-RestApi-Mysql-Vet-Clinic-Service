package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.dto.NewCaseDto;
import com.works.vetrestapi.entities.NewCase;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/case")
public class CaseRestController {
    final NewCaseDto caseDto;

    public CaseRestController(NewCaseDto caseDto) {
        this.caseDto = caseDto;
    }

    @ApiOperation("Kasa Ekleme")
    @PostMapping("/add")
    public Map<String,Object> add(@RequestBody @Valid NewCase newCase, BindingResult bindingResult){
        return caseDto.caseAdd(newCase, bindingResult);
    }

    @ApiOperation("Kasa Listeleme")
    @GetMapping("/list")
    public Map<String,Object> list(){
        return caseDto.list();
    }


    @ApiOperation("Kasa Silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String,Object> delete(@PathVariable String strIndex){
        return caseDto.caseDelete(strIndex);
    }
}