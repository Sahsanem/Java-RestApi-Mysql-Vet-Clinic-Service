package com.works.vetrestapi.entities;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Data
@ApiModel(value = "Customer",description = "Müşteri ekleme için kullanılır")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cid", nullable = false)
    private Integer cid;

    @ApiModelProperty(value = "Müşteri adı")
    @NotNull(message = "Müşteri adı null olamaz ")
    @NotEmpty(message = "Müşteri adı boş olamaz")
    private String cname;

    @NotNull(message = "Müşteri soyadı null olamaz ")
    @NotEmpty(message = "Müşteri soyadı boş olamaz")
    private String csurname;

    @NotNull(message = "Müşteri telefonu null olamaz ")
    @NotEmpty(message = "Müşteri telefonu boş olamaz")
    private String c_phone;

    private String c_mobile_phone;

    @NotNull(message = "Müşteri email adresi null olamaz ")
    @NotEmpty(message = "Müşteri email adresi boş olamaz")
    private String c_email;

    @NotNull(message = "Müşteri tc no null olamaz ")
    private String tax_administration;
    @NotNull(message = "Müşteri tc no null olamaz ")
    private String c_note;

    @NotNull(message = "Müşteri tc no null olamaz ")
    @NotEmpty(message = "Müşteri tc no boş olamaz")
    private String tc_no;

    @NotNull(message = "İl bilgisi null olamaz ")
    @NotEmpty(message = "İl bilgisi adı boş olamaz")
    private String il;

    private String ilce;

    @NotNull(message = "Müşteri adresi null olamaz ")
    @NotEmpty(message = "Müşteri adresi boş olamaz")
    private String address;

    private String c_code;

    @ApiModelProperty(value = "Müşteri No",notes = "Hayvan eklenebilmesi için bu alan mutlaka girilmelidir.")
    @NotNull(message = "Müşteri no null olamaz ")
    @NotEmpty(message = "Müşteri no boş olamaz")
    private String c_no;


}
