package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Account;
import com.example.vmthealthycaresystemsbe.model.Customer;
import com.example.vmthealthycaresystemsbe.repository.IAccountRepository;
import com.example.vmthealthycaresystemsbe.repository.ICustomerRepository;
import com.example.vmthealthycaresystemsbe.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;

@Service
public class CustomerService implements ICustomerService {
    @Autowired
    private ICustomerRepository customerRepository;
    @Autowired
    private IAccountRepository accountRepository;

    @Override
    public Customer save(Customer customer) {
        Account account = this.accountRepository.findAccountByEmail(customer.getEmail());

        if (account == null) {
            return null;
        }

        Customer customerPhone = this.customerRepository.findByPhone(customer.getPhone()).orElse(null);
        Customer customerIdCard = this.customerRepository.findByIdCard(customer.getIdCard()).orElse(null);

        if (customerPhone != null || customerIdCard != null) {
            return null;
        }
//
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//        String formattedDate = String.format(String.valueOf(formatter));

        customer.setDateOfBirth(customer.getDateOfBirth());
        customer.setAccount(account);
        return this.customerRepository.save(customer);
    }

    @Override
    public Customer findByEmail(String email) {
        return this.customerRepository.findByEmail(email).orElse(null);
    }

    @Override
    public Customer findById(Long id) {
        return this.customerRepository.findById(id).orElse(null);
    }
}
