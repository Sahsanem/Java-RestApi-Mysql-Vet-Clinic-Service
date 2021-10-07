package com.works.vetrestapi.dto;

import com.works.vetrestapi.entities.LabInterlayer;
import com.works.vetrestapi.entities.Laboratuvar;
import com.works.vetrestapi.repositories.LaboratuvarRepository;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.*;

@Service
public class LaboratuvarDto {
    final LaboratuvarRepository lRepo;

    public LaboratuvarDto(LaboratuvarRepository lRepo) {
        this.lRepo = lRepo;
    }

    // config
    private final String UPLOAD_DIR =  "src/main/resources/static/uploads/";
    long maxFileUploadSize = 2048;

    public Map<String, Object> upload( MultipartFile file, LabInterlayer laboratuvar) {
        int sendSuccessCount = 0;
        String errorMessage = "";
        Map<String, Object> hm = new LinkedHashMap<>();
        System.out.println(laboratuvar);
        if (!file.isEmpty() ) {
            long fileSizeMB = file.getSize() / 1024;
            if ( fileSizeMB > maxFileUploadSize ) {
                System.err.println("Dosya boyutu çok büyük Max 2MB");
                errorMessage = "Dosya boyutu çok büyük Max "+ (maxFileUploadSize / 1024) +"MB olmalıdır";
            }else {
                String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                String ext = fileName.substring(fileName.length()-5, fileName.length());
                String uui = UUID.randomUUID().toString();
                fileName = uui + ext;
                try {
                    Path path = Paths.get(UPLOAD_DIR + fileName);
                    Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                    sendSuccessCount += 1;

                    // add database
                    Laboratuvar image = new Laboratuvar();
                    image.setCus_no(laboratuvar.getCus_no());
                    image.setImageName(fileName);
                    image.setLab_type(laboratuvar.getLab_type());
                    image.setAnimalName(laboratuvar.getAnimalName());
                    image.setDiagnosis(laboratuvar.getDiagnosis());
                    lRepo.save(image);

                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }else {
            errorMessage = "Lütfen resim seçiniz!";
        }

        if ( errorMessage.equals("") ) {
            hm.put("status", true);
            hm.put("message", "Yükleme Başarılı");
        }else {
            hm.put("status", false);
            hm.put("message", errorMessage);
        }

        return hm;
    }

    public Map<String,Object> labList(){
        Map<String ,Object> hm=new LinkedHashMap<>();
        hm.put("status",true);
        List<Laboratuvar> ls = lRepo.findAll();
        hm.put("result",ls);
        return hm;
    }

    public Map<String, Object> delete (String strlid){
        Map<String, Object> hm = new HashMap<>();
        int lid = Integer.parseInt(strlid);
        try{
            if(lRepo.existsById(lid)){
                lRepo.deleteById(lid);
                hm.put("status", true);
                hm.put("message", "Silme işlemi başarılı!");
                hm.put("result", lid);
            }else{
                hm.put("status", false);
                hm.put("message", "Silme Başarısız. Girilen Id yanlış");
                hm.put("result", lid);
            }
        }catch (Exception ex){
            hm.put("status", false);
            hm.put("message", "Silme işlemi gerçekleşmedi");
            hm.put("result", lid);
        }
        return hm;
    }
}
