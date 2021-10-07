package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "Box",description = "Satış siparişi ekleme için kullanılır")
public class Box {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "box_id", nullable = false)
    private Integer box_id;
    @Min(value = 1)
    @ApiModelProperty(value = "Ürün ismi")
    private int retail_pro_search;
    @ApiModelProperty(value = "Miktar")
    @Min(value = 1)
    private int sales_product_amount;
    @ApiModelProperty(value = "Satış Notu")
    private String sales_note;

}
