package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.SalesDto;
import com.works.vetrestapi.entities.Box;
import com.works.vetrestapi.entities.BoxCustomer;
import com.works.vetrestapi.entities.CustomerPaySale;
import com.works.vetrestapi.entities.RetailSale;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/sales")
@Api(value ="SalesRestController",authorizations ={@Authorization(value = "basicAuth")})
public class SalesRestController {
    final SalesDto salesDto;

    public SalesRestController(SalesDto salesDto) {
        this.salesDto = salesDto;
    }

    @ApiOperation("Ürünlerin Listesi")
    @GetMapping("/productList")
    public Map<String ,Object> productList(){
        return salesDto.productList();
    }


    @ApiOperation("Müşterilerin Listesi")
    @GetMapping("/customerList")
    public Map<String ,Object> customerList(){
        return salesDto.customerList();
    }

    @ApiOperation("Sepete Ürün Ekleme")
    @PostMapping("/boxadd")
    public Map<String, Object> boxAdd(@RequestBody @Valid Box box, BindingResult bResult){

        return salesDto.BoxAdd(box,bResult);
    }

    //seçilenlerin ödeme kısmında hesaplanıp eklenmesi
    @ApiOperation("Ürünlerin Listesi")
    @PostMapping("/retailSale/{box_id}/{sales_product_amount}")
    public Map<String, Object> retailSale(@RequestBody @Valid RetailSale retailSale, BindingResult bResult, @PathVariable String box_id, @PathVariable String sales_product_amount){

        return salesDto.RetailSaleAdd(retailSale,box_id,sales_product_amount,bResult);
    }

    @ApiOperation("Kayıtlı Müşteri Listeleme")
    @GetMapping("/customerPaylist")
    public Map<String ,Object> customerPayList(){
        return salesDto.customerPayList();
    }


    @ApiOperation("Kayıtlı Müşterinin Sipariş Ekleme İşlemi")
    @PostMapping("/boxCustomeradd")
    public Map<String, Object> boxCustomerAdd(@RequestBody @Valid BoxCustomer boxCustomer, BindingResult bResult){
        return salesDto.boxCustomerAdd(boxCustomer,bResult);
    }


    @ApiOperation("Kayıtlı Müşteri Ödeme Kısmı Hesaplanıp Eklenilmesi")
    @PostMapping("/customerPaySale/{pid}/{sale_amount}/{cid}")
    public Map<String, Object> customerPaySale(@RequestBody CustomerPaySale customerPaySale, @PathVariable String pid, @PathVariable String sale_amount, @PathVariable String cid){

        return salesDto.CustomerPaySaleAdd(customerPaySale,pid,sale_amount, cid);
    }

}
