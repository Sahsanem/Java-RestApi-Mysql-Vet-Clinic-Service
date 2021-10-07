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
@ApiModel(value = "Product",description = "Ürün ekleme için kullanılır")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id", nullable = false)
    private Integer product_id;

    @ApiModelProperty(value = "Ürün adı")
    @NotNull(message = "Ürün adı boş olamaz")
    @NotEmpty(message = "Ürün boş olamaz")
    private String product_name;

    @ApiModelProperty(value = "Ürün birimi")
    @NotNull(message = "Ürün birimi boş olamaz")
    @NotEmpty(message = "Ürün birimi boş olamaz")
    private String product_unit;

    @ApiModelProperty(value = "Kategori id")
    @NotNull(message = "Kategori id boş olamaz")
    @Min(value = 1,message = "Kategori id girmelisiniz.")
    private int category_group_cg_id;

    @ApiModelProperty(value = "Tedarikçi id")
    @NotNull(message = "Tedarikçi id boş olamaz")
    @Min(value = 1,message = "Tedarikçi id girmelisiniz.")
    private int vendor_vid;

    @ApiModelProperty(value = "Ürün türü")
    @NotNull(message = "Ürün türü boş olamaz")
    private String product_type;

    @ApiModelProperty(value = "Ürün barkodu")
    @NotNull(message = "Ürün barkodu boş olamaz")
    @Min(value = 1,message = "Ürün barkodu girmelisiniz.")
    private int product_barcode;

    @ApiModelProperty(value = "Ürün kodu")
    @NotNull(message = "Ürün kodu boş olamaz")
    @Min(value = 1,message = "Ürün kodu girmelisiniz.")
    private int product_code;

    @ApiModelProperty(value = "Ürün KDV oranı")
    @NotNull(message = "Ürün kdv boş olamaz")
    @Min(value = 1,message = "Ürün kdv değeri girmelisiniz.")
    private int product_kdv;

    @ApiModelProperty(value = "Ürün alış fiyatı")
    @NotNull(message = "Ürün alış fiyatı boş olamaz")
    @Min(value = 1,message = "Ürün alış fiyatı girmelisiniz.")
    private int product_buying;

    @ApiModelProperty(value = "Ürün satış fiyatı")
    @NotNull(message = "Ürün satış fiyatı boş olamaz")
    @Min(value = 1,message = "Ürün satış fiyatı girmelisiniz.")
    private int product_sales;

    @ApiModelProperty(value = "Ürün kritik stok miktarı")
    @NotNull(message = "Ürün kritik stok miktarı boş olamaz")
    @Min(value = 1,message = "Ürün kritik stok miktarı girmelisiniz.")
    private int product_stock;

    @ApiModelProperty(value = "Ürün durumu Aktif/Değil")
    @NotNull(message = "Ürün durumunu seçiniz.")
    private boolean product_status;

    @ApiModelProperty(value = "Ürün satış fiyatına KDV dahil mi?")
    @NotNull(message = "Satışa kdv dahil mi? Seçiniz.")
    private boolean product_sales_kdv;

    @ApiModelProperty(value = "Ürün alış fiyatına KDV dahil mi?")
    @NotNull(message = "Ürün alış fiyatına KDV dahil mi? Seçiniz.")
    private boolean product_buying_kdv;

    @ApiModelProperty(value = "Miktarlı satışlarda fiyat sabitlensin mi?")
    @NotNull(message = "Miktarlı satışlarda fiyat sabitlensin mi? Seçiniz.")
    private boolean product_amount_fixed;

}