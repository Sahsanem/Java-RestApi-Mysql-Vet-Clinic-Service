package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "PetStock",description = "Pet aşı stok ekleme için kullanılır")
public class PetStock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "psid", nullable = false)
    @Min(value = 1,message = "Psid değeri mutlaka girilmelidir.")
    private Integer psid;

    @ApiModelProperty(value = "Depo id")
    @NotNull(message = "Depo id boş olamaz")
    @Min(value = 1,message = "Depo id girmelisiniz.")
    private int depo;

    @ApiModelProperty(value = "Pet aşı id")
    @NotNull(message = "Pet aşı id boş olamaz")
    @Min(value = 1,message = "Pet aşı id girmelisiniz.")
    private int pet_vac;

    @ApiModelProperty(value = "Pet aşı miktarı")
    @NotNull(message = "Miktar boş olamaz")
    @Min(value = 1,message = "Miktar girmelisiniz.")
    private int amount;
}

