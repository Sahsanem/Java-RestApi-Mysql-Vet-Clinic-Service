package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.SettingsDto;
import com.works.vetrestapi.entities.User;
import com.works.vetrestapi.repositories.UserRepository;
import com.works.vetrestapi.services.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/settings")
@Api(value ="SettingsRestController",authorizations ={@Authorization(value = "basicAuth")})
public class SettingsRestController {

    final SettingsDto sDto;
    final UserRepository uRepo;
    final UserService uService;

    public SettingsRestController(SettingsDto sDto, UserRepository uRepo, UserService uService) {
        this.sDto = sDto;
        this.uRepo = uRepo;
        this.uService = uService;
    }

    @ApiOperation("Kullanıcı Ekleme İşlemi")
    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody User user) {
        return sDto.add(user);
    }

    @ApiOperation("Kullanıcı Listesi")
    @GetMapping("/list")
    public Map<String,Object> list(){
      return sDto.list();
    }

    @ApiOperation("Çıkış Yapma İşlemi")
    @GetMapping("/logout")
    public Map<String ,Object> logout(){
        Map<String ,Object> hm=new LinkedHashMap<>();
        hm.put("status",true);
        return hm;
    }


}
