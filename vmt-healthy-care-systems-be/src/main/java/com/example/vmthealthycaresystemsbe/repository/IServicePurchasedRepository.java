package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.ServicePurchased;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface IServicePurchasedRepository extends JpaRepository<ServicePurchased, Long> {
//    @Query(value = "SELECT * FROM service_purchased " +
//            "JOIN services ON service_purchased.services_id = services.id " +
//            "WHERE services.name LIKE CONCAT('%',:nameService,'%') AND service_purchased.customer_id = :customerId",
//            nativeQuery = true)
    Page<ServicePurchased> findAllByCustomer_Id(@Param("customerId") Long customerId,
//                                                 @Param("nameService") String nameService,
                                                 Pageable pageable);
}
