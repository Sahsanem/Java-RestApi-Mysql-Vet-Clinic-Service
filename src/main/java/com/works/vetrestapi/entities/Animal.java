package com.works.vetrestapi.entities;



import io.swagger.annotations.ApiModel;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "Animal",description = "Hasta(Hayvan) ekleme için kullanılır")
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aid", nullable = false)
    private Integer aid;

    @NotNull(message = "Hayvan adı null olamaz ")
    @NotEmpty(message = "Hayvan adı boş olamaz")
    private String p_name;
    @Column(unique = true)
    @Min(value = 1,message = "Çip no girilmelidir.")
    private int cip_no;
    private int karne_no;
    private Date p_birth;
    @NotNull(message = "Tipi null olamaz ")
    @NotEmpty(message = "Tipi boş olamaz")
    private String p_type;
    @NotNull(message = "Irkı null olamaz ")
    @NotEmpty(message = "Irkı boş olamaz")
    private String p_race;
    @NotNull(message = "Renk null olamaz ")
    @NotEmpty(message = "Renk boş olamaz")
    private String pcolor;
    @Min(value = 1,message = "Cinsiyet tipi girilmelidir.")
    @Max(value = 2)
    private int gender;
    private boolean spayed;
    @Min(value = 1,message = "Müşteri no girilmelidir.")
    private int cus_no;


}
