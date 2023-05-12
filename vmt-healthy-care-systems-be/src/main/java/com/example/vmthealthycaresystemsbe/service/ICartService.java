package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Cart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ICartService {
    Page<Cart> findAllByCustomerId(Long customerId, Pageable pageable);

    Cart updateCart(Long id);

    Cart save(Cart cart);

    Cart findById(Long id);

    Cart increaseQuantity(Long id);

    Cart decreaseQuantity(Long id);

    Boolean payment(List<Long> listIdCart);
}
