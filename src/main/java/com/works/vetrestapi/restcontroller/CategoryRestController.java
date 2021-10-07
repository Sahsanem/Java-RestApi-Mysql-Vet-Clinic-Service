package com.works.vetrestapi.restcontroller;


import com.works.vetrestapi.dto.CategoryDto;
import com.works.vetrestapi.entities.CategoryGroup;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@RestController
@RequestMapping("/category")
public class CategoryRestController {
    final CategoryDto categoryDto;

    public CategoryRestController(CategoryDto categoryDto) {
        this.categoryDto = categoryDto;
    }

    @ApiOperation("Kategori Ekleme")
    @PostMapping("/add")
    public Map<String,Object> add(@RequestBody @Valid CategoryGroup categoryGroup, BindingResult bindingResult){
        return categoryDto.categoryAdd(categoryGroup,bindingResult);
    }
    @ApiOperation("Kategori Listeleme")
    @GetMapping("/list")
    public Map<String,Object> list(){
        return categoryDto.list();
    }

    @ApiOperation("Kategori Silme")
    @DeleteMapping("/delete/{strIndex}")
    public Map<String,Object> delete(@PathVariable String strIndex){
        return categoryDto.categoryDelete(strIndex);
    }
}

