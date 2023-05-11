package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.Cart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ICartRepository extends JpaRepository<Cart, Long> {
    @Query(value = "SELECT * " +
            "FROM cart " +
            "WHERE cart.customer_id = :customerId AND cart.flag_delete = :flagDelete " +
            "ORDER BY cart.id DESC ", nativeQuery = true)
    Page<Cart> findAllByCustomerIdAndFlagDelete(@Param("customerId") Long customerId,
                                                Pageable pageable,
                                                @Param("flagDelete") boolean flagDelete);
}
