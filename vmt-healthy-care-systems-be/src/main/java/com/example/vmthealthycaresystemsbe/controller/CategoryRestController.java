package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.Category;
import com.example.vmthealthycaresystemsbe.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/categories")
@CrossOrigin("*")
public class CategoryRestController {
    @Autowired
    private ICategoryService categoryService;

    @GetMapping("/public/details/{id}")
    public ResponseEntity<Category> findById(@PathVariable Long id) {
        Category category = this.categoryService.findById(id);

        if (category == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(category, HttpStatus.OK);
    }
}
