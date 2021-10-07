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
@ApiModel(value = "Buying",description = "Alış siparişi ekleme için kullanılır")
public class Buying {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bid", nullable = false)
    private Integer bid;

    @ApiModelProperty(value = "Alış adı")
    private String name;

    @ApiModelProperty(value = "Ürün adı")
    @Min(value = 1,message = "Ürün no girilmelidir.")
    private int productName;

    @ApiModelProperty(value = "Toplam tutar")
    private int total;

    @ApiModelProperty(value = "Fatura No")
    @NotNull(message = "Fatura No Null Olamaz")
    @NotEmpty(message = "Fatura No Boş olamaz")
    private String billNumber;

    @ApiModelProperty(value = "İşlemler")
    @Min(value = 1,message = "İşlem Değeri girilmelidir.")
    private int process;

    @ApiModelProperty(value = "Alış Notu")
    @NotNull(message = "Alış Notu Null Olamaz")
    @NotEmpty(message = "Alış Notu Boş olamaz")
    private String buyingNote;

    @ApiModelProperty(value = "Alış Tarihi")
    private Date buying_date;

}
