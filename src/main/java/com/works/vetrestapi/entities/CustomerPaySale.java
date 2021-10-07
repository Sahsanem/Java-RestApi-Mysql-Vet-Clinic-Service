package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Data
@ApiModel(value = "CustomerPaySale",description = "Kayıtlı müşteri satış ödemesi ekleme için kullanılır")
public class CustomerPaySale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cp_id", nullable = false)
    private Integer cp_id;
    @ApiModelProperty(value = "Ödenecek tutar")
    private int saleBoxtotal;

    @ApiModelProperty(value = "Müşteri adı")
    @NotNull(message = "Müşteri adı null olamaz ")
    @NotEmpty(message = "Müşteri adı boş olamaz")
    private String cname;

    @ApiModelProperty(value = "Müşteri işlemi")
    private int customer_process;

    @ApiModelProperty(value = "Müşteri fatura no")
    private int customerBillNumber;

    @ApiModelProperty(value = "Satış Tarihi")
    private Date box_cus_date;
}
