package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "RetailSale",description = "Parekende satış ekleme için kullanılır")
public class RetailSale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rid", nullable = false)
    private Integer rid;

    @ApiModelProperty(value = "Ödenecek tutar")
    private int saletotal;

    @ApiModelProperty(value = "Ürün Adı")
    private String product_name;

    @ApiModelProperty(value = "İşlemler")
    @Min(value = 1,message = "İşlem değeri girilmelidir.")
    private int sale_process;
    @ApiModelProperty(value = "Satış Tarihi")
    private Date sale_date;


}
