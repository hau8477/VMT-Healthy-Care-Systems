package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.Cart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICartRepository extends JpaRepository<Cart, Long> {
    Page<Cart> findAllByCustomer_IdAndFlagDelete(Long customerId, Pageable pageable, boolean flagDelete);
}
