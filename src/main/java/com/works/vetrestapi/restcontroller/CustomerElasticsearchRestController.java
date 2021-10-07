package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.CustomerElasticSearchDto;
import com.works.vetrestapi.model.CustomerDoc;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
public class CustomerElasticsearchRestController {


   final CustomerElasticSearchDto cdDto;

    public CustomerElasticsearchRestController(CustomerElasticSearchDto cdDto) {
        this.cdDto = cdDto;
    }
    @ApiOperation("Müşteri Ekleme (Elasticsearch)")
    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody CustomerDoc cd){
        return cdDto.add(cd);
    }

    @ApiOperation("Müşteri Listesi (Elasticsearch)")
    @GetMapping("/list")
    public Map<String, Object> list(){
        return cdDto.list();
    }

    @ApiOperation("Müşteri Silme (Elasticsearch)")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String, Object> delete(@PathVariable String strIndex){
        return cdDto.delete(strIndex);
    }


    @GetMapping("/search/{data}")
    public Map<String, Object> search(@PathVariable String data){
        return cdDto.search(data);
    }





}
