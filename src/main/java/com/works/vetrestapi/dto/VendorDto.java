package com.works.vetrestapi.dto;


import com.works.vetrestapi.model.Vendor;
import com.works.vetrestapi.model.VendorSession;
import com.works.vetrestapi.redisrepositories.VendorSessionRepository;
import com.works.vetrestapi.repositories.VendorRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service
public class VendorDto {
    final VendorSessionRepository vsRepo;
    final VendorRepository vRepo;
    final Util util;


    public VendorDto(VendorSessionRepository vsRepo, VendorRepository vRepo, Util util) {
        this.vsRepo = vsRepo;
        this.vRepo = vRepo;
        this.util = util;
    }

    //tedarikçi ekleme
    public Map<String, Object> Vendoradd(Vendor vendor, BindingResult bResult) {
        Map<String , Object> hm = new LinkedHashMap<>();
        if(!bResult.hasErrors()){
            try {
                Vendor vendorDb = vRepo.save(vendor);
                VendorSession vendorSession  = new VendorSession();
                vendorSession.setId(vendorDb.getId());
                vendorSession.setVendor_name(vendorDb.getVendor_name());
                vendorSession.setVendor_email(vendorDb.getVendor_email());
                vendorSession.setVendor_phone(vendorDb.getVendor_phone());
                vsRepo.save(vendorSession);
                hm.put("status", true);
                hm.put("message", "Ekleme başarılı");
                hm.put("result", vendorDb);
            } catch (Exception e) {
                hm.put("status", false);
            }

        }else{
            hm.put("status",false);
            hm.put("errors", util.errors(bResult));
        }

        return hm;
    }

    //tedarikçi listeleme
    public Map<String,Object> Vendorlist(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Vendor> ls = vRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    //tedarikçi Silme
    public Map<String, Object> Vendordelete (String strIndex){
        Map<String, Object> hm = new HashMap<>();
        int cuid = Integer.parseInt(strIndex);
        try{
            if(vRepo.existsById(cuid)){
                vRepo.deleteById(cuid);
                vsRepo.deleteById(cuid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", cuid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", cuid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "silme gerçekleşmedi");
            hm.put("result", cuid);
        }
        return hm;
    }




}
