package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Cart;
import com.example.vmthealthycaresystemsbe.model.Customer;
import com.example.vmthealthycaresystemsbe.model.Services;
import com.example.vmthealthycaresystemsbe.repository.ICartRepository;
import com.example.vmthealthycaresystemsbe.repository.ICustomerRepository;
import com.example.vmthealthycaresystemsbe.repository.IServicesRepository;
import com.example.vmthealthycaresystemsbe.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class CartService implements ICartService {
    @Autowired
    private ICartRepository cartRepository;
    @Autowired
    private IServicesRepository servicesRepository;
    @Autowired
    private ICustomerRepository customerRepository;

    @Override
    public Page<Cart> findAllByCustomerId(Long customerId, Pageable pageable) {
        return this.cartRepository.findAllByCustomerIdAndFlagDelete(customerId, pageable, false);
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

    @Override
    public Cart save(Cart cart) {
        Services services = this.servicesRepository.findById(cart.getServices().getId()).orElse(null);
        Customer customer = this.customerRepository.findById(cart.getCustomer().getId()).orElse(null);
        List<Cart> carts = this.cartRepository.findAll();



        if (services == null || customer == null) {
            return null;
        }

        if (cart.getQuantity() > services.getQuantity() || cart.getQuantity() <= 0) {
            return null;
        }

        for (Cart cartM: carts) {
            if (Objects.equals(cart.getServices().getId(), cartM.getServices().getId()) &&
                    Objects.equals(cart.getCustomer().getId(), cartM.getCustomer().getId()) && !cartM.isFlagDelete()) {
                cartM.setQuantity(cartM.getQuantity() + cart.getQuantity());
                return this.cartRepository.save(cartM);
            }
        }

        return this.cartRepository.save(cart);
    }

    @Override
    public Cart findById(Long id) {
        return this.cartRepository.findById(id).orElse(null);
    }

    @Override
    public Cart increaseQuantity(Long id) {
        Cart cart = this.cartRepository.findById(id).orElse(null);

        if (cart == null) {
            return null;
        }

        Services services = this.servicesRepository.findById(cart.getServices().getId()).orElse(null);

        assert services != null;
        if (cart.getQuantity() >= services.getQuantity() || cart.getQuantity() <= 0) {
            return null;
        }

        cart.setQuantity(cart.getQuantity() + 1);

        return this.cartRepository.save(cart);
    }

    @Override
    public Cart decreaseQuantity(Long id) {
        Cart cart = this.cartRepository.findById(id).orElse(null);

        if (cart == null) {
            return null;
        }

        if (cart.getQuantity() <= 1) {
            return null;
        }

        cart.setQuantity(cart.getQuantity() - 1);

        return this.cartRepository.save(cart);
    }
}
