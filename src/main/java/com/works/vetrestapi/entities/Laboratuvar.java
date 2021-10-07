package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "Laboratuvar",description = "Laboratuvar sonuç ekleme için kullanılır")
public class Laboratuvar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lid", nullable = false)
    private Integer lid;

    @ApiModelProperty(value = "Laboratuvar tipi")
    @Min(value = 1,message = "Laboratuvar tipi girilmelidir.")
    private int lab_type;

    @ApiModelProperty(value = "Hayvan adı")
    @Min(value = 1,message = "Hayvan no girilmelidir.")
    private int animalName;

    @ApiModelProperty(value = "Teşhis")
    @NotNull(message = "Teşhis null olamaz ")
    @NotEmpty(message = "Teşhis adı boş olamaz")
    private String diagnosis;

    @ApiModelProperty(value = "Resim adı")
    private String imageName;

    @ApiModelProperty(value = "Müşteri no")
    @Min(value = 1,message = "Müşteri no girilmelidir.")
    private int cus_no;


}
