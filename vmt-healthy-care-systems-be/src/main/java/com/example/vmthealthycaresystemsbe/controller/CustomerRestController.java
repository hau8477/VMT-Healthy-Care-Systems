package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.dto.CustomerDTO;
import com.example.vmthealthycaresystemsbe.model.Customer;
import com.example.vmthealthycaresystemsbe.service.ICustomerService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/customers")
public class CustomerRestController {
    @Autowired
    private ICustomerService customerService;

    @PostMapping("/save")
    public ResponseEntity<?> save(@Validated @RequestBody CustomerDTO customerDTO, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return new ResponseEntity<>(bindingResult.getFieldErrors(), HttpStatus.NOT_ACCEPTABLE);
        }

        Customer customer = new Customer();
        BeanUtils.copyProperties(customerDTO, customer);

        Customer customerNew = this.customerService.save(customer);

        if (customerNew == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/details/{email}")
    public ResponseEntity<Customer> findByEmail(@PathVariable String email) {
        Customer customer = this.customerService.findByEmail(email);

        if (customer == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(customer, HttpStatus.OK);
    }
}
