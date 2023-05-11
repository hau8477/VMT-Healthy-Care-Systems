package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.Cart;
import com.example.vmthealthycaresystemsbe.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/carts")
public class CartRestController {
    @Autowired
    private ICartService cartService;

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
}
