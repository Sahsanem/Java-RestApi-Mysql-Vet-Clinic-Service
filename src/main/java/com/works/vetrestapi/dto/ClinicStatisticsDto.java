package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.Animals;
import com.works.vetrestapi.entities.BuyingJoinCustomer;
import com.works.vetrestapi.entities.CustomerPaySale;
import com.works.vetrestapi.entities.ScheduleCalendars;
import com.works.vetrestapi.repositories.*;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class ClinicStatisticsDto {
    final LaboratuvarRepository lRepo;
    final AnimalRepository aRepo;
    final ScheduleCalendarRepository scRepo;
    final CustomerPaySaleRepository cpRepo;
    final BuyingRepository bRepo;

    public ClinicStatisticsDto(LaboratuvarRepository lRepo, AnimalRepository aRepo, ScheduleCalendarRepository scRepo, CustomerPaySaleRepository cpRepo, BuyingRepository bRepo) {
        this.lRepo = lRepo;
        this.aRepo = aRepo;
        this.scRepo = scRepo;
        this.cpRepo = cpRepo;
        this.bRepo = bRepo;
    }

    //Çıkan Laboratuvar sonuçları
    public Map<String,Object> countLab(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        int countLab = lRepo.countlab();
        hm.put("result",countLab);
        return hm;
    }

    //Toplam hasta(Animal) sayısı
    public Map<String,Object> TotalAnimal(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Animals> ls = aRepo.totalAnimal();
        hm.put("result",ls);
        return hm;
    }

    //Toplam Randevu sayısı
    public Map<String,Object> Totalschedules(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<ScheduleCalendars> ls = scRepo.schedules();
        hm.put("result",ls);
        return hm;
    }
    //Hangi müşteri ne kadar kazandırdı
    public Map<String,Object> totalClinicList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<CustomerPaySale> ls = cpRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Ödeme türüne göre toplam kazanç
    public Map<String,Object> listProcess(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<BuyingJoinCustomer>ls = bRepo.listprocess();
        hm.put("result",ls);
        return hm;
    }
}
