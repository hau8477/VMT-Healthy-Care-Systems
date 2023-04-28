package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.Departments;
import com.example.vmthealthycaresystemsbe.service.IDepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("api/departments")
public class DepartmentsRestController {
    @Autowired
    private IDepartmentsService departmentsService;

    @GetMapping("/findAll")
    public ResponseEntity<List<Departments>> findAll() {
        List<Departments> departments = this.departmentsService.findAll();

        if (departments.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(departments, HttpStatus.OK);
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<Departments> findById(@PathVariable Long id) {
        Departments departments = this.departmentsService.findById(id);

        if (departments == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(departments, HttpStatus.OK);
    }

}
