package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.ServicePurchased;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IServicePurchasedService {
    Page<ServicePurchased> findAllByServicesName(Long customerId, Pageable pageable);

}
