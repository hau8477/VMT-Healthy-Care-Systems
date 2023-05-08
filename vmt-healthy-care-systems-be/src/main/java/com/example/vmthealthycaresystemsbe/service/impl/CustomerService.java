package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Account;
import com.example.vmthealthycaresystemsbe.model.Customer;
import com.example.vmthealthycaresystemsbe.repository.IAccountRepository;
import com.example.vmthealthycaresystemsbe.repository.ICustomerRepository;
import com.example.vmthealthycaresystemsbe.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService implements ICustomerService {
    @Autowired
    private ICustomerRepository customerRepository;
    @Autowired
    private IAccountRepository accountRepository;

    @Override
    public Customer save(Customer customer) {
        Account account = this.accountRepository.findAccountByEmail(customer.getEmail());
        customer.setAccount(account);
        return this.customerRepository.save(customer);
    }

    @Override
    public Customer findByEmail(String email) {
        return this.customerRepository.findByEmail(email).orElse(null);
    }
}
