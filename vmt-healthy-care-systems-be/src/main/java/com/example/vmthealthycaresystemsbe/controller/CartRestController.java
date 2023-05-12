package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.dto.CartDTO;
import com.example.vmthealthycaresystemsbe.model.Cart;
import com.example.vmthealthycaresystemsbe.model.Customer;
import com.example.vmthealthycaresystemsbe.model.Services;
import com.example.vmthealthycaresystemsbe.service.ICartService;
import com.example.vmthealthycaresystemsbe.service.ICustomerService;
import com.example.vmthealthycaresystemsbe.service.IServicesService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("api/carts")
public class CartRestController {
    @Autowired
    private ICartService cartService;
    @Autowired
    private IServicesService servicesService;
    @Autowired
    private ICustomerService customerService;

    @GetMapping("/findAll/{customerId}")
    public ResponseEntity<Page<Cart>> findAllByCustomerId(@PathVariable Long customerId,
                                                          @PageableDefault(size = 100, page = 0) Pageable pageable) {
        Page<Cart> carts = this.cartService.findAllByCustomerId(customerId, pageable);

        if (carts.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(carts, HttpStatus.OK);
    }


    @GetMapping("/update/{cartId}")
    public ResponseEntity<HttpStatus> updateCart(@PathVariable Long cartId) {
        Cart cartNew = this.cartService.updateCart(cartId);

        if (cartNew == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/save")
    public ResponseEntity<Cart> save(@RequestBody CartDTO cartDTO) {
        Cart cart = new Cart();
        BeanUtils.copyProperties(cartDTO, cart);

        Customer customer = this.customerService.findById(cartDTO.getCustomerId());
        Services services = this.servicesService.findById(cartDTO.getServicesId());

        cart.setCustomer(customer);
        cart.setServices(services);

        Cart cartNew = this.cartService.save(cart);

        if (cartNew == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(cartNew,HttpStatus.OK);
    }

    @GetMapping("/increase-quantity/{cartId}")
    public ResponseEntity<HttpStatus> increaseQuantity(@PathVariable Long cartId) {
        Cart cart = this.cartService.increaseQuantity(cartId);

        if (cart == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/decrease-quantity/{cartId}")
    public ResponseEntity<HttpStatus> decreaseQuantity(@PathVariable Long cartId) {
        Cart cart = this.cartService.decreaseQuantity(cartId);

        if (cart == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/payment")
    public ResponseEntity<?> payment(@RequestBody List<Long> listIdCart) {
        Boolean result = this.cartService.payment(listIdCart);

        if (result == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }
}
