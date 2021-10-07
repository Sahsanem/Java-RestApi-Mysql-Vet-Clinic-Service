package com.works.vetrestapi.entities;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@ApiModel(value = "CalendarInfo",description = "Takvim bilgisi ekleme için kullanılır")
public class CalendarInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cid", nullable = false)
    private Integer cid;

    @ApiModelProperty(value = "Müşteri adı")
    private String cname;


    private String ccolor;
    private String cbgColor;
    private String cdragBgColor;
    private String cborderColor;


}
