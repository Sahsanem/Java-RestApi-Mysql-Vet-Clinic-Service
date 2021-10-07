package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.ChangePassword;
import com.works.vetrestapi.entities.User;
import com.works.vetrestapi.repositories.UserRepository;
import com.works.vetrestapi.services.UserService;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Optional;

@Service
public class ChangePasswordDto {
    final UserRepository userRepository;
    final UserService userService;


    public ChangePasswordDto(UserRepository userRepository, UserService userService) {
        this.userRepository = userRepository;
        this.userService = userService;

    }

    public Map<Object, Object> changePassword(ChangePassword changePassword, String us_mail){
        Map<Object, Object> hm = new LinkedHashMap<>();
        Optional<User> optUser = userRepository.findByEmailEqualsAllIgnoreCase(us_mail);
        if (optUser.isPresent()) {
            if (changePassword.getNewpassword().equals(changePassword.getNewpassword_confirm())) {
                optUser.get().setPassword(userService.encoder().encode(changePassword.getNewpassword()));
                userRepository.saveAndFlush(optUser.get());
                hm.put("status", true);
                hm.put("result",optUser.get().getPassword());
            } else {
                hm.put("status", false);

            }
        }else{
            hm.put("status", false);
            hm.put("message", "Mail bulunamadı.");
        }
        return hm;
    }
}

