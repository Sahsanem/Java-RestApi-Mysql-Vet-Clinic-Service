package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.DashboardDto;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/dashboard")
@Api(value = "Anasayfa")
public class DashboardRestController {
    final DashboardDto dDto;

    public DashboardRestController(DashboardDto dDto) {
        this.dDto = dDto;
    }

    @ApiOperation("Randevu Listesi")
    @GetMapping("/Calendarlist")
    public Map<String ,Object> CalendarList(){
        return dDto.CalendarList();
    }

    @ApiOperation("Toplam Müşteri Listesi")
    @GetMapping("/CustomerList")
    public Map<String ,Object> CustomerList(){
        return dDto.CustomerList();
    }

    @ApiOperation("Toplam Satış Miktarı")
    @GetMapping("/totalSaleCount")
    public Map<String ,Object> totalSaleCount(){
        return dDto.totalSaleCount();
    }

    @ApiOperation("Toplam Kazanım")
    @GetMapping("/total")
    public Map<String ,Object> total(){
        return dDto.total();
    }

    @ApiOperation("Toplam Stok")
    @GetMapping("/totalStockList")
    public Map<String ,Object> totalStockList(){
        return dDto.totalStockList();
    }


}
