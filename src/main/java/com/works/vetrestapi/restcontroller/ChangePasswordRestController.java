package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.ChangePasswordDto;
import com.works.vetrestapi.entities.ChangePassword;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("password")
public class ChangePasswordRestController {
    final ChangePasswordDto changePasswordDto;

    public ChangePasswordRestController(ChangePasswordDto changePasswordDto) {
        this.changePasswordDto = changePasswordDto;
    }
    @ApiOperation("Şifre Değiştirme")
    @PutMapping("/add/{us_mail}")
    public Map<Object, Object> add(@RequestBody ChangePassword changePassword, @PathVariable String us_mail) {
        return changePasswordDto.changePassword(changePassword, us_mail);
    }
}