package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.User;
import com.works.vetrestapi.entities.UserList;
import com.works.vetrestapi.repositories.RoleRepository;
import com.works.vetrestapi.repositories.UserRepository;
import com.works.vetrestapi.services.UserService;
import org.springframework.stereotype.Service;


import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class SettingsDto {
    final UserService uService;
    final UserRepository uRepo;
    final RoleRepository rRepo;

    public SettingsDto(UserService uService, UserRepository uRepo, RoleRepository rRepo) {
        this.uService = uService;
        this.uRepo = uRepo;
        this.rRepo = rRepo;
    }

    public Map<String, Object> add(User user) {
        Map<String, Object> hm = new LinkedHashMap<>();
        hm.put("status", true);
        try {
            hm.put("user", uService.register(user));
            hm.put("message","Ekleme Başarılı!");
        }catch (Exception ex) {
            hm.put("user", null );
            hm.put("message","Ekleme sırasında hata oluştu!");
        }
        return hm;
    }

    public Map<String,Object> list(){
        Map<String,Object> hm = new LinkedHashMap<>();
        List<UserList> ls = uRepo.userList();
        hm.put("status",true);
        hm.put("result",ls);
        return hm;
    }
}
