package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.dto.ProductDto;
import com.works.vetrestapi.entities.Product;
import com.works.vetrestapi.entities.Stock;
import com.works.vetrestapi.repositories.StockRepository;
import com.works.vetrestapi.util.Util;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/product")
@Api(value ="ProductRestController",authorizations ={@Authorization(value = "basicAuth")})
public class ProductRestController {

    final ProductDto productDto;
    final StockRepository sRepo;
    final Util util;

    public ProductRestController(ProductDto productDto, StockRepository sRepo, Util util) {
        this.productDto = productDto;
        this.sRepo = sRepo;
        this.util = util;
    }

    @ApiOperation("Ürün Ekleme")
    @PostMapping("/addProduct")
    public Map<String,Object> addProduct(@RequestBody @Valid Product product, BindingResult bindingResult){
        return productDto.productAdd(product,bindingResult);
    }

    @ApiOperation("Ürün Listesi")
    @GetMapping("/listProduct")
    public Map<String,Object> listProduct(){
        return productDto.productList();
    }

    @ApiOperation("Ürün Silme")
    @DeleteMapping("/deleteProduct/{strIndex}")
    public Map<String,Object> deleteProduct(@PathVariable String strIndex){
        return productDto.productDelete(strIndex);
    }

    @ApiOperation("Ürün Stok Ekleme")
    @PostMapping("/addStock")
    public Map<String,Object> addStock(@RequestBody @Valid Stock stock, BindingResult bindingResult){
        return productDto.stockAdd(stock,bindingResult);
    }

    @ApiOperation("Ürün Stok Silme")
    @DeleteMapping("/deleteStock/{strIndex}")
    public Map<String,Object> deleteStock(@PathVariable String strIndex){
        return productDto.stockDelete(strIndex);
    }

    @ApiOperation("Ürün Stok Listesi")
    @GetMapping("/listDepoStock/{depo_id}")
    public Map<String,Object> listDepoStock(@PathVariable String depo_id){
        return productDto.DepoStockList(depo_id);
    }

    @ApiOperation("Ürün Stok Güncelleme")
    @PutMapping("/updateStock")
    public Map<String, Object> update(@RequestBody @Valid Stock stock,BindingResult bindingResult) {
        return productDto.stockUpdate(stock,bindingResult);
    }





}