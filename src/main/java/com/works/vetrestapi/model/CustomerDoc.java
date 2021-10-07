package com.works.vetrestapi.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.util.UUID;


@Document(indexName = "customerdoc")
@Data
public class CustomerDoc {
    @Id
    private String cid= UUID.randomUUID().toString();

    @Field(type=FieldType.Text)
    private String cname;

    @Field(type=FieldType.Text)
    private String csurname;

    @Field(type=FieldType.Text)
    private String c_phone;

    @Field(type=FieldType.Text)
    private String c_mobile_phone;

    @Field(type=FieldType.Text)
    private String c_email;

    @Field(type=FieldType.Text)
    private String tax_administration;

    @Field(type=FieldType.Text)
    private String c_note;

    @Field(type=FieldType.Text)
    private String tc_no;

    @Field(type=FieldType.Text)
    private String il;

    @Field(type=FieldType.Text)
    private String ilce;

    @Field(type=FieldType.Text)
    private String address;

    @Field(type=FieldType.Text)
    private String c_code;

    @Field(type=FieldType.Text)
    private String c_no;

}
