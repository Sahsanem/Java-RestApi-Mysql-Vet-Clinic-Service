package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.VendorDto;
import com.works.vetrestapi.model.Vendor;
import com.works.vetrestapi.util.Util;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/vendor")
@Api(value ="VendorRestController",authorizations ={@Authorization(value = "basicAuth")})
public class VendorRestController {
    final VendorDto vendorDto;
    final Util util;

    public VendorRestController(VendorDto vendorDto, Util util) {
        this.vendorDto = vendorDto;
        this.util = util;
    }
    @ApiOperation("Tedarikçi Ekleme")
    @PostMapping("/add")
    public Map<String, Object> add(@RequestBody @Valid Vendor vendor, BindingResult bResult){

        return vendorDto.Vendoradd(vendor,bResult);
    }
    @ApiOperation("Tedarikçi Listesi")
    @GetMapping("/list")
    public Map<String ,Object> list(){
        return vendorDto.Vendorlist();
    }

    @ApiOperation("Tedarikçi Silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String, Object> delete(@PathVariable String strIndex){
        return vendorDto.Vendordelete(strIndex);
    }

}
