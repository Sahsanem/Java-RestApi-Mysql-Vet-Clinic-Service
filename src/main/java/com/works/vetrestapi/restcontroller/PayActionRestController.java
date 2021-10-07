package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.PayActionDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/payAction")
@Api(value ="PayActionRestController",authorizations ={@Authorization(value = "basicAuth")})
public class PayActionRestController {
    final PayActionDto payActionDto;


    public PayActionRestController(PayActionDto payActionDto) {
        this.payActionDto = payActionDto;
    }

    @ApiOperation("Para girişi liste")
    @GetMapping("/payInList")
    public Map<String ,Object> payInList(){
        return payActionDto.payInList();
    }


    @ApiOperation("Para Çıkışı liste")
    @GetMapping("/payOutList")
    public Map<String ,Object> payOutList(){
        return payActionDto.payOutList();
    }


    @ApiOperation("Ödeme türüne göre listeleme")
    @GetMapping("/payActionProcess/{process_id}")
    public Map<String ,Object> payOutList(@PathVariable String process_id){
        return payActionDto.payActionProcess(process_id);
    }
}
