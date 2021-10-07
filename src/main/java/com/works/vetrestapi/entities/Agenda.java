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
@ApiModel(value = "Agenda",description = "Ajanda ekleme için kullanılır")
public class Agenda {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @ApiModelProperty(value = "Ajanda Başlığı")
    @NotNull(message = "Ajanda Başlığı Null Olamaz")
    @NotEmpty(message = "Ajanda Başlığı Boş olamaz")
    private String agenda_title;

    @ApiModelProperty(value = "Ajanda Açıklama")
    @NotNull(message = "Ajanda Açıklama Null Olamaz")
    @NotEmpty(message = "Ajanda Açıklama Boş olamaz")
    private String agenda_desc;

    @ApiModelProperty(value = "Ajanda Tarihi")
    private Date agenda_date;

    @ApiModelProperty(value = "Durum")
    private Boolean activeChecked;

    @ApiModelProperty(value = "Ajanda saat")
    @NotNull(message = "Ajanda saat Null Olamaz")
    @NotEmpty(message = "Ajanda saat Boş olamaz")
    private String agenda_hours;

}

