package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "FarmStock",description = "Çiftlik aşı stok ekleme için kullanılır")
public class FarmStock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fsid", nullable = false)
    @Min(value = 1,message = "fsid değişkeni mutlaka girilmelidir.")
    private Integer fsid;

    @ApiModelProperty(value = "Çiftlik aşı id")
    @NotNull(message = "Çiftlik aşı id boş olamaz")
    @Min(value=1,message = "Çiftlik aşı id girilmelidir.")
    private int farm_vac;

    @ApiModelProperty(value = "Depo id")
    @NotNull(message = "Depo id boş olamaz")
    @Min(value=1,message = "Depo id girilmelidir.")
    private int warehouse;

    @ApiModelProperty(value = "Çiftlik aşı miktarı")
    @NotNull(message = "Miktar boş olamaz")
    @Min(value=1,message = "Miktar girilmelidir.")
    private int number;

}
