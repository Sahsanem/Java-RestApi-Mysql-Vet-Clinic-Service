package com.works.vetrestapi.dto;


import com.works.vetrestapi.entities.*;
import com.works.vetrestapi.repositories.FarmStockRepository;
import com.works.vetrestapi.repositories.FarmVaccineRepository;
import com.works.vetrestapi.repositories.PetStockRepository;
import com.works.vetrestapi.repositories.PetVaccineRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class VaccineDto {
    final Util util;
    final PetVaccineRepository pvRepo;
    final PetStockRepository psRepo;
    final FarmVaccineRepository fvRepo;
    final FarmStockRepository fsRepo;

    public VaccineDto(Util util, PetVaccineRepository pvRepo, PetStockRepository psRepo, FarmVaccineRepository fvRepo, FarmStockRepository fsRepo) {
        this.util = util;
        this.pvRepo = pvRepo;
        this.psRepo = psRepo;
        this.fvRepo = fvRepo;
        this.fsRepo = fsRepo;
    }

    //pet vaccine
    public Map<String,Object> petVaccineAdd(PetVaccine petVaccine, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                PetVaccine petVaccine1 = pvRepo.save(petVaccine);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",petVaccine1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String,Object> petVaccineList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<PetVaccine> ls = pvRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> petVaccineDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int pet_vaccine_id= Integer.parseInt(strIndex);
        try{
            if(pvRepo.existsById(pet_vaccine_id)){
                pvRepo.deleteById(pet_vaccine_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", pet_vaccine_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result",pet_vaccine_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", pet_vaccine_id);
        }
        return hm;
    }

    public Map<String,Object> DepoPetStockList(String depo_id){
        Map<String, Object> hm = new LinkedHashMap<>();
        int id= Integer.parseInt(depo_id);
        hm.put("status", true);
        List<PetStockJoinDepo> list = psRepo.petStockJoinDepo(id);
        hm.put("result",list);
        return hm;


    }

    public Map<String,Object> petstockAdd(PetStock petStock, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                PetStock petStock1 = psRepo.save(petStock);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",petStock1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String, Object> petstockDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int psid= Integer.parseInt(strIndex);
        try{
            if(psRepo.existsById(psid)){
                psRepo.deleteById(psid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", psid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", psid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", psid);
        }
        return hm;
    }

    public Map<String, Object> petstockUpdate(PetStock petStock,BindingResult bindingResult) {
        Map<String, Object> hm = new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            if ( petStock.getPsid() != null ) {

                Optional<PetStock> oPetStock = psRepo.findById(petStock.getPsid());
                if ( oPetStock.isPresent() ) {
                    try {
                        psRepo.saveAndFlush(petStock);
                        hm.put("status", true);
                        hm.put("message", "Güncelleme başarılı");
                        hm.put("result", petStock);
                    }catch (Exception ex) {
                        hm.put("status", false);

                        hm.put("result",petStock);
                    }

                }else {
                    hm.put("status", false);
                    hm.put("message", "Update işlemi sırasında hata oluştu!");
                    hm.put("result", petStock);
                }

            }else {
                hm.put("status", false);
                hm.put("message", "Update işlemi sırasında hata oluştu!");
                hm.put("result", petStock);
            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }

        return hm;
    }

    //farm vaccine
    public Map<String,Object> farmvaccineAdd(FarmVaccine farmVaccine, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                FarmVaccine farmVaccine1 = fvRepo.save(farmVaccine);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",farmVaccine1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String,Object> farmvaccineList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<FarmVaccine> ls = fvRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> farmvaccineDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int farm_vaccine_id= Integer.parseInt(strIndex);
        try{
            if(fvRepo.existsById(farm_vaccine_id)){
                fvRepo.deleteById(farm_vaccine_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", farm_vaccine_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", farm_vaccine_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", farm_vaccine_id);
        }
        return hm;
    }

    public Map<String,Object> DepofarmStockList(String depo_id){
        Map<String, Object> hm = new LinkedHashMap<>();
        int id= Integer.parseInt(depo_id);
        hm.put("status", true);
        List<FarmStockJoinDepo> list = fsRepo.farmStockJoinDepo(id);
        hm.put("result",list);
        return hm;


    }

    public Map<String,Object> farmstockAdd(FarmStock farmStock, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                FarmStock farmStock1 = fsRepo.save(farmStock);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",farmStock1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String, Object> farmstockDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int fsid= Integer.parseInt(strIndex);
        try{
            if(fsRepo.existsById(fsid)){
                fsRepo.deleteById(fsid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", fsid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", fsid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", fsid);
        }
        return hm;
    }

    public Map<String, Object> farmstockUpdate(FarmStock farmStock,BindingResult bindingResult) {
        Map<String, Object> hm = new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            if ( farmStock.getFsid() != null ) {

                Optional<FarmStock> ofarmStock= fsRepo.findById(farmStock.getFsid());
                if ( ofarmStock.isPresent() ) {
                    try {
                        fsRepo.saveAndFlush(farmStock);
                        hm.put("status", true);
                        hm.put("message", "Güncelleme başarılı");
                        hm.put("result", farmStock);
                    }catch (Exception ex) {
                        hm.put("status", false);

                        hm.put("result", farmStock);
                    }

                }else {
                    hm.put("status", false);
                    hm.put("message", "Update işlemi sırasında hata oluştu!");
                    hm.put("result", farmStock);
                }

            }else {
                hm.put("status", false);
                hm.put("message", "Update işlemi sırasında hata oluştu!");
                hm.put("result", farmStock);
            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }

        return hm;
    }

}
