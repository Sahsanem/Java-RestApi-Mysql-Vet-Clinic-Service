package com.works.vetrestapi.model;

import lombok.Data;
import org.springframework.data.annotation.AccessType;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@Data
@MappedSuperclass
public class BaseVendor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String vendor_name;
    private String vendor_email;
    private String vendor_phone;
}