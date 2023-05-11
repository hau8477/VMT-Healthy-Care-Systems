package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Cart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ICartService {
    Page<Cart> findAllByCustomerId(Long customerId, Pageable pageable);

    Cart updateCart(Long id);
}
