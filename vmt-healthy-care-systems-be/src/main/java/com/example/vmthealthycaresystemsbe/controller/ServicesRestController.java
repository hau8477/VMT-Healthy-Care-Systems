package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.Services;
import com.example.vmthealthycaresystemsbe.service.IServicesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/services")
public class ServicesRestController {
    @Autowired
    private IServicesService servicesService;

    @GetMapping("/findAll/{categoryId}")
    public ResponseEntity<Page<Services>> findAll(@PathVariable Long categoryId,
                                                  @RequestParam(required = false, defaultValue = "") String name,
                                                  @PageableDefault(size = 3, page = 0) Pageable pageable) {
        Page<Services> services = this.servicesService.findAllByCategoryAndName(categoryId, name, pageable);

        if (services.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(services, HttpStatus.OK);
    }
}
