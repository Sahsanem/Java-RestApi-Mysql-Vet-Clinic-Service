package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "Depo",description = "Depo ekleme için kullanılır")
public class Depo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "depo_id", nullable = false)
    private Integer depo_id;

    @ApiModelProperty(value = "Depo adı")
    @NotNull(message = "Depo Adı boş olamaz")
    @NotEmpty(message = "Depo Adı boş olamaz")
    private String depo_name;

    @ApiModelProperty(value = "Depo durumu")
    private boolean depo_status;
}
