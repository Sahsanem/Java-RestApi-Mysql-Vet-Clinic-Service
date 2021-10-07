package com.works.vetrestapi.dto;



import com.works.vetrestapi.entities.Product;
import com.works.vetrestapi.entities.Stock;
import com.works.vetrestapi.entities.StockJoinDepo;
import com.works.vetrestapi.repositories.ProductRepository;
import com.works.vetrestapi.repositories.StockRepository;
import com.works.vetrestapi.util.Util;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class ProductDto {
    final ProductRepository pRepo;
    final StockRepository sRepo;
    final Util util;

    public ProductDto(ProductRepository pRepo, StockRepository sRepo, Util util) {
        this.pRepo = pRepo;
        this.sRepo = sRepo;
        this.util = util;
    }

    public Map<String,Object> productAdd(Product product, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                Product product1 = pRepo.save(product);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",product1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String,Object> productList(){
        Map<String,Object> hm = new LinkedHashMap<>();
        hm.put("status",true);
        List<Product> ls = pRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> productDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int product_id= Integer.parseInt(strIndex);
        try{
            if(pRepo.existsById(product_id)){
                pRepo.deleteById(product_id);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", product_id);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", product_id);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", product_id);
        }
        return hm;
    }

    public Map<String,Object> DepoStockList(String depo_id){
        Map<String, Object> hm = new LinkedHashMap<>();
        int id= Integer.parseInt(depo_id);
        hm.put("status", true);
        List<StockJoinDepo> list = sRepo.stockJoinDepo(id);
        hm.put("result",list);
        return hm;


    }

    public Map<String,Object> stockAdd(Stock stock, BindingResult bindingResult){
        Map<String,Object> hm= new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            try {
                Stock stock1 = sRepo.save(stock);
                hm.put("status",true);
                hm.put("message","Ekleme başarılı");
                hm.put("result",stock1);
            }catch (Exception e){
                hm.put("status",false);

            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }
        return hm;
    }

    public Map<String, Object> stockDelete (String strIndex){
        Map<String, Object> hm = new LinkedHashMap<>();
        int sid= Integer.parseInt(strIndex);
        try{
            if(sRepo.existsById(sid)){
                sRepo.deleteById(sid);
                hm.put("status", true);
                hm.put("message", "silme başarılı");
                hm.put("result", sid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", sid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme gerçekleşmedi");
            hm.put("result", sid);
        }
        return hm;
    }

    public Map<String, Object> stockUpdate(Stock stock,BindingResult bindingResult) {
        Map<String, Object> hm = new LinkedHashMap<>();
        if (!bindingResult.hasErrors()){
            if ( stock.getSid() != null ) {

                Optional<Stock> oStock= sRepo.findById(stock.getSid());
                if ( oStock.isPresent() ) {
                    try {
                        sRepo.saveAndFlush(stock);
                        hm.put("status", true);
                        hm.put("message", "Güncelleme başarılı");
                        hm.put("result", stock);
                    }catch (Exception ex) {
                        hm.put("status", false);

                        hm.put("result", stock);
                    }

                }else {
                    hm.put("status", false);
                    hm.put("message", "Update işlemi sırasında hata oluştu!");
                    hm.put("result", stock);
                }

            }else {
                hm.put("status", false);
                hm.put("message", "Update işlemi sırasında hata oluştu!");
                hm.put("result", stock);
            }
        }else {
            hm.put("status",false);
            hm.put("errors",util.errors(bindingResult));
        }

        return hm;
    }

}