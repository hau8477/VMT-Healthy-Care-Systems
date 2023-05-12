package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.ServicePurchased;
import com.example.vmthealthycaresystemsbe.service.IServicePurchasedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/service-purchases")
public class ServicePurchasedRestController {
    @Autowired
    private IServicePurchasedService servicePurchasedService;

    @GetMapping("/findAll/{customerId}")
    public ResponseEntity<Page<ServicePurchased>> findAll(@PathVariable Long customerId,
                                                          @PageableDefault(size = 3, page = 0)
                                                          Pageable pageable) {
        Page<ServicePurchased> servicePurchases =
                this.servicePurchasedService.findAllByServicesName(customerId, pageable);

        if (servicePurchases.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(servicePurchases, HttpStatus.OK);
    }
}
