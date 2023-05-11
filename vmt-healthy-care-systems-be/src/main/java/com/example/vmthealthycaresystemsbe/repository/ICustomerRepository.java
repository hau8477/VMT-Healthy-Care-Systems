package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ICustomerRepository extends JpaRepository<Customer, Long> {
    Optional<Customer> findByEmail(String email);

    Optional<Customer> findByIdCard(String idCard);
    Optional<Customer> findByPhone(String phone);
}
