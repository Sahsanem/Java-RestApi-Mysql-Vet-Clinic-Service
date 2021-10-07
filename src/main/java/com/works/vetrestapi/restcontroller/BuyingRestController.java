package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.BuyingDto;
import com.works.vetrestapi.entities.Buying;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/buying")
public class BuyingRestController {

    final BuyingDto buyingDto;

    public BuyingRestController(BuyingDto buyingDto) {
        this.buyingDto = buyingDto;
    }
    @ApiOperation("Alış Listeleme")
    @GetMapping("/list")
    public Map<String ,Object> list(){
        return buyingDto.BuyingList();
    }

    @ApiOperation("Alış Ekleme")
    @PostMapping("/add/{product_id}")
    public Map<String, Object> add(@RequestBody @Valid Buying buying, BindingResult bResult, @PathVariable String product_id ){

        return buyingDto.Buyingadd(buying,product_id,bResult);
    }

    @ApiOperation("Tedarikçi Listeleme")
    @GetMapping("/vendorlist")
    public Map<String ,Object> vendorlist(){
        return buyingDto.VendorList();
    }


    @ApiOperation("Tedarikçiye Ait Ürünleri Listeleme")
    @GetMapping("/vendorProductlist/{vid}")
    public Map<String ,Object> vendorProductlist(@PathVariable String vid){
        return buyingDto.VendorProductList(vid);
    }




}
