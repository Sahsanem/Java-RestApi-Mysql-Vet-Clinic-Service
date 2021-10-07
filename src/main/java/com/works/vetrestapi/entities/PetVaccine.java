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
@ApiModel(value = "PetVaccine",description = "Pet aşı ekleme için kullanılır")
public class PetVaccine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pet_vaccine_id", nullable = false)
    private Integer pet_vaccine_id;


    @NotNull(message = "Pet aşı adı boş olamaz")
    @NotEmpty(message = "Pet aşı boş olamaz")
    @ApiModelProperty(value = "Pet Aşı adı")
    private String pet_vaccine_name;


    @NotNull(message = "Pet aşı birim boş olamaz")
    @NotEmpty(message = "Pet aşı birim boş olamaz")
    @ApiModelProperty(value = "Pet aşı birim")
    private String pet_vaccine_unit;


    @NotNull(message = "Kategori id boş olamaz")
    @ApiModelProperty(value = "Kategori id")
    @Min(value = 1,message = "Kategori id girilmelidir.")
    private int category_group_cg_id;


    @NotNull(message = "Tedarikçi id boş olamaz")
    @ApiModelProperty(value = "Tedarikçi id")
    @Min(value = 1,message = "Tedarikçi id girilmelidir.")
    private int vendor_vid;

    @NotNull(message = "Pet aşı türü boş olamaz")
    @NotEmpty(message = "Pet aşı türü boş olamaz")
    @ApiModelProperty(value = "Pet türü")
    private String pet_vaccine_type;

    @NotNull(message = "Pet aşı barkodu boş olamaz")
    @ApiModelProperty(value = "Pet aşı barkodu")
    @Min(value = 1,message = "Pet aşı barkodu girilmelidir.")
    private int pet_vaccine_barcode;

    @NotNull(message = "Pet aşı kodu boş olamaz")
    @ApiModelProperty(value = "Pet aşı kodu")
    @Min(value = 1,message = "Pet aşı kodu girilmelidir.")
    private int pet_vaccine_code;

    @NotNull(message = "Pet aşı kdv boş olamaz")
    @ApiModelProperty(value = "Pet aşı KDV oranı")
    @Min(value = 1,message = "Pet aşı KDV oranı girilmelidir.")
    private int pet_vaccine_kdv;

    @NotNull(message = "Pet aşı alış fiyatı boş olamaz")
    @ApiModelProperty(value = "Pet aşı alış fiyatı")
    @Min(value = 1,message = "Pet aşı alış fiyatı girilmelidir.")
    private int pet_vaccine_buying;

    @NotNull(message = "Pet aşı satış fiaytı boş olamaz")
    @ApiModelProperty(value = "Pet aşı satış fiyatı")
    @Min(value = 1,message = "Pet aşı satış fiyatı girilmelidir.")
    private int pet_vaccine_sales;

    @NotNull(message = "Pet aşı kritik stok miktarı boş olamaz")
    @ApiModelProperty(value = "Pet aşı kritik stok miktarı")
    @Min(value = 1,message = "Pet aşı kritik stok miktarı girilmelidir.")
    private int pet_vaccine_stock;


    @ApiModelProperty(value = "Pet aşı durumu Aktif/Değil")
    private boolean pet_vaccine_status;


    @NotNull()
    @ApiModelProperty(value = "Pet aşı satış fiyatına KDV dahil mi?")
    private boolean pet_vaccine_sales_kdv;


    @NotNull()
    @ApiModelProperty(value = "Pet aşı alış fiyatına KDV dahil mi?")
    private boolean pet_vaccine_buying_kdv;


    @NotNull()
    @ApiModelProperty(value = "Miktarlı satışlarda fiyat sabitlensin mi?")
    private boolean pet_vaccine_amount_fixed;

    @NotNull(message = "Pet aşı tipi boş olamaz")
    @NotEmpty(message = "Pet aşı tipi boş olamaz")
    @ApiModelProperty(value = "Pet aşı tipi")
    private String pet_vaccine_tip;

    @NotNull(message = "Pet aşı tekrar sayısı")
    @ApiModelProperty(value = "Pet aşı tekrar sayısı")
    private int pet_vaccine_number;
}
