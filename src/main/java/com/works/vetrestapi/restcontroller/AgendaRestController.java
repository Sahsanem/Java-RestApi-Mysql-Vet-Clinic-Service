package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.dto.AgendaDto;
import com.works.vetrestapi.entities.Agenda;
import com.works.vetrestapi.util.Util;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/agenda")
@Api(value ="AgendaRestController",authorizations ={@Authorization(value = "basicAuth")})
public class AgendaRestController {

    final AgendaDto agendaDto;
    final Util util;

    public AgendaRestController(AgendaDto agendaDto, Util util) {
        this.agendaDto = agendaDto;
        this.util = util;
    }
    @ApiOperation("Ajanda Ekleme")
    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody @Valid Agenda agenda, BindingResult bResult){
        return agendaDto.add(agenda,bResult);
    }
    @ApiOperation("Ajanda Listesi")
    @GetMapping("/list")
    public Map<String ,Object> list(){
        return agendaDto.Agendalist();
    }

    @ApiOperation("Ajanda Silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String, Object> delete(@PathVariable String strIndex){
        return agendaDto.delete(strIndex);
    }
}

