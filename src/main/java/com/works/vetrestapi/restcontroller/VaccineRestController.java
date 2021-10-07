package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.dto.VaccineDto;
import com.works.vetrestapi.entities.FarmStock;
import com.works.vetrestapi.entities.FarmVaccine;
import com.works.vetrestapi.entities.PetStock;
import com.works.vetrestapi.entities.PetVaccine;
import com.works.vetrestapi.util.Util;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/vaccine")
@Api(value ="VaccineRestController",authorizations ={@Authorization(value = "basicAuth")})
public class VaccineRestController {

    final VaccineDto vaccineDto;
    final Util util;

    public VaccineRestController(VaccineDto vaccineDto, Util util) {
        this.vaccineDto = vaccineDto;
        this.util = util;
    }

    //Pet Aşı
    @ApiOperation("Pet Aşı Ekleme")
    @PostMapping("/addPetVaccine")
    public Map<String,Object> addPetVaccine(@RequestBody @Valid PetVaccine petVaccine, BindingResult bindingResult){
        return vaccineDto.petVaccineAdd(petVaccine,bindingResult);
    }

    @GetMapping("/listPetVaccine")
    @ApiOperation("Pet Aşı Listesi")
    public Map<String,Object> listPetvaccine(){
        return vaccineDto.petVaccineList();
    }

    @ApiOperation("Pet Aşı Silme")
    @DeleteMapping("/deletePetVaccine/{strIndex}")
    public Map<String,Object> deletePetVaccine(@PathVariable String strIndex){
        return vaccineDto.petVaccineDelete(strIndex);
    }

    @ApiOperation("Pet Aşı Stok Ekleme")
    @PostMapping("/addPetStock")
    public Map<String,Object> addPetStock(@RequestBody @Valid PetStock petStock, BindingResult bindingResult){
        return vaccineDto.petstockAdd(petStock,bindingResult);
    }

    @ApiOperation("Pet Aşı Stok Silme")
    @DeleteMapping("/deletePetStock/{strIndex}")
    public Map<String,Object> deletePetStock(@PathVariable String strIndex){
        return vaccineDto.petstockDelete(strIndex);
    }

    @ApiOperation("Pet Aşı Depo Durumu Listesi")
    @GetMapping("/listDepoPetStock/{depo_id}")
    public Map<String,Object> listDepoPetStock(@PathVariable String depo_id){
        return vaccineDto.DepoPetStockList(depo_id);
    }

    @ApiOperation("Pet Aşı Stok Güncelleme")
    @PutMapping("/updatePetStock")
    public Map<String, Object> updatePetStock(@RequestBody @Valid PetStock petStock,BindingResult bindingResult) {
        return vaccineDto.petstockUpdate(petStock,bindingResult);
    }

    //Çiftlik Aşı

    @ApiOperation("Çiftlik Aşı Ekleme")
    @PostMapping("/addFarmVaccine")
    public Map<String,Object> addFarmVaccine(@RequestBody @Valid FarmVaccine farmVaccine, BindingResult bindingResult){
        return vaccineDto.farmvaccineAdd(farmVaccine,bindingResult);
    }

    @ApiOperation("Çiftlik Aşı Listesi")
    @GetMapping("/listFarmVaccine")
    public Map<String,Object> listFarmvaccine(){
        return vaccineDto.farmvaccineList();
    }

    @ApiOperation("Çiftlik Aşı Silme")
    @DeleteMapping("/deleteFarmVaccine/{strIndex}")
    public Map<String,Object> deleteFarmVaccine(@PathVariable String strIndex){
        return vaccineDto.farmvaccineDelete(strIndex);
    }

    @ApiOperation("Çiftlik Aşı Stok Ekleme")
    @PostMapping("/addFarmStock")
    public Map<String,Object> addFarmStock(@RequestBody @Valid FarmStock farmStock, BindingResult bindingResult){
        return vaccineDto.farmstockAdd(farmStock,bindingResult);
    }

    @ApiOperation("Çiftlik Aşı Stok Silme")
    @DeleteMapping("/deleteFarmStock/{strIndex}")
    public Map<String,Object> deleteFarmStock(@PathVariable String strIndex){
        return vaccineDto.farmstockDelete(strIndex);
    }

    @ApiOperation("Çiftlik Aşı Depo Durumu Listesi")
    @GetMapping("/listDepoFarmStock/{depo_id}")
    public Map<String,Object> listDepoFarmStock(@PathVariable String depo_id){
        return vaccineDto.DepofarmStockList(depo_id);
    }
    @ApiOperation("Çiftlik Aşı Stok Güncelleme")
    @PutMapping("/updateFarmStock")
    public Map<String, Object> updateFarmStock(@RequestBody @Valid FarmStock farmStock,BindingResult bindingResult) {
        return vaccineDto.farmstockUpdate(farmStock,bindingResult);
    }

}
