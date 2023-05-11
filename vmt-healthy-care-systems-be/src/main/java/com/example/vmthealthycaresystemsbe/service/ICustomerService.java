package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Customer;

public interface ICustomerService {
    Customer save(Customer customer);
    Customer findByEmail(String email);

    Customer findById(Long id);
}
