package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Cart;
import com.example.vmthealthycaresystemsbe.repository.ICartRepository;
import com.example.vmthealthycaresystemsbe.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class CartService implements ICartService {
    @Autowired
    private ICartRepository cartRepository;

    @Override
    public Page<Cart> findAllByCustomerId(Long customerId, Pageable pageable) {
        return this.cartRepository.findAllByCustomer_IdAndFlagDelete(customerId, pageable, false);
    }

    @Override
    public Cart updateCart(Long id) {
        Cart cart = this.cartRepository.findById(id).orElse(null);

        if (cart == null) {
            return null;
        }

        cart.setFlagDelete(true);

        return this.cartRepository.save(cart);
    }
}
