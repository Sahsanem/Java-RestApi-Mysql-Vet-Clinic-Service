package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "CategoryGroup",description = "CategoryGroup ekleme için kullanılır")
public class CategoryGroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cg_id", nullable = false)
    private Integer cg_id;

    @ApiModelProperty(value = "Kategori adı")
    @NotNull(message = "Kategori adı null olamaz ")
    @NotEmpty(message = "Kategori adı boş olamaz")
    private String cg_name;

    @ApiModelProperty(value = "Kategori durumu")
    private boolean cg_status;
}