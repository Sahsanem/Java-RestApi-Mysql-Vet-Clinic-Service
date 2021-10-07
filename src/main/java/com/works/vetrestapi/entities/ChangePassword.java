package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
@ApiModel(value = "Şifre Değiştirme", description = "Şifre değiştirme için kullanılır.")
public class ChangePassword{

    @ApiModelProperty(value = "newpassword ")
    @NotEmpty(message = "Yeni Şifre boş olamaz")
    @NotNull(message = "Yeni Şifre null olamaz!")
    @Length(min = 3)
    private String newpassword;

    @ApiModelProperty(value = "newpasswor_confirm ")
    @NotEmpty(message = "Yeni Şifre tekrar boş olamaz")
    @NotNull(message = "Yeni Şifre tekrar null olamaz!")
    @Length(min = 3)
    private String newpassword_confirm;
}
