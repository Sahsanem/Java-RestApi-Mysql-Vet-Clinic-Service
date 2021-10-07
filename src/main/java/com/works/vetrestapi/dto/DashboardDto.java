package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.Customer;
import com.works.vetrestapi.entities.ScheduleCalendar;
import com.works.vetrestapi.entities.Stock;
import com.works.vetrestapi.entities.Stocks;
import com.works.vetrestapi.repositories.*;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class DashboardDto {

    final ScheduleCalendarRepository sRepo;
    final CustomerRepository cRepo;
    final CustomerPaySaleRepository cpRepo;
    final RetailSaleRepository rRepo;
    final BuyingRepository bRepo;
    final StockRepository stRepo;

    public DashboardDto(ScheduleCalendarRepository sRepo, CustomerRepository cRepo, CustomerPaySaleRepository cpRepo, RetailSaleRepository rRepo, BuyingRepository bRepo, StockRepository stRepo) {
        this.sRepo = sRepo;
        this.cRepo = cRepo;
        this.cpRepo = cpRepo;
        this.rRepo = rRepo;
        this.bRepo = bRepo;
        this.stRepo = stRepo;
    }
    //Randevu List
    public Map<String ,Object> CalendarList(){
        Map<String,Object> hm=new LinkedHashMap<>();
        hm.put("status","true");
        hm.put("message","Listeleme Başarılı");
        List<ScheduleCalendar> ls=sRepo.findAll();
        hm.put("result",ls);
        return hm;
    }
    //Toplam Müşteri List
    public Map<String ,Object> CustomerList(){
        Map<String,Object> hm=new LinkedHashMap<>();
        hm.put("status","true");
        hm.put("message","Listeleme Başarılı");
        List<Customer> ls=cRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //Toplam Satış Miktarı
    public Map<String ,Object> totalSaleCount(){
        Map<String,Object> hm=new LinkedHashMap<>();
        hm.put("status","true");
        hm.put("message","Listeleme Başarılı");
        int s1=cpRepo.countSale();
        int s2=rRepo.retailSale();
        int total=s1+s2;
        hm.put("result",total);
        return hm;
    }
    //Toplam Kazanım
    public Map<String,Object> total(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        int customer_pay = cpRepo.customerSale();
        int retail_pay = rRepo.retailSale();
        int buying_pay = bRepo.customerBuying();
        int sum = (customer_pay+retail_pay)-buying_pay;
        hm.put("result",sum);
        return hm;
    }

    //Toplam Stok
    public Map<String ,Object> totalStockList(){
        Map<String,Object> hm=new LinkedHashMap<>();
        hm.put("status","true");
        hm.put("message","Listeleme Başarılı");
        List<Stocks> ls=stRepo.stocks();
        hm.put("result",ls);
        return hm;
    }

}
