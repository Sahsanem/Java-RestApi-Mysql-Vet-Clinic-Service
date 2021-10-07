package com.works.vetrestapi.restcontroller;

import com.works.vetrestapi.dto.ClinicStatisticsDto;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/clinicStatistics")
public class ClinicStatisticsRestController {
    final ClinicStatisticsDto clinicStatisticsDto;

    public ClinicStatisticsRestController(ClinicStatisticsDto clinicStatisticsDto) {
        this.clinicStatisticsDto = clinicStatisticsDto;
    }

    @ApiOperation("Çıkan Laboratuvar Sonuç Listesi")
    @GetMapping("/countLab")
    public Map<String ,Object> countLab(){
        return clinicStatisticsDto.countLab();
    }


    @ApiOperation("Toplam Hasta Sayısı")
    @GetMapping("/totalAnimal")
    public Map<String ,Object> totalAnimal(){
        return clinicStatisticsDto.TotalAnimal();
    }


    @ApiOperation("Toplam Randevu sayısı")
    @GetMapping("/totalSchedule")
    public Map<String ,Object> totalSchedule(){
        return clinicStatisticsDto.Totalschedules();
    }


    @ApiOperation("Hangi müşteri ne kadar kazandırdı?")
    @GetMapping("/totalClinicList")
    public Map<String ,Object> totalClinicList(){
        return clinicStatisticsDto.totalClinicList();
    }


    @ApiOperation("Ödeme Türüne Göre Toplam Kazanç")
    @GetMapping("/listProcess")
    public Map<String ,Object> listProcess(){
        return clinicStatisticsDto.listProcess();
    }

}
