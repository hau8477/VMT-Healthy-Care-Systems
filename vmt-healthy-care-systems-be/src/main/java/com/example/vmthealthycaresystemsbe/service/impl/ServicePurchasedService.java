package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.ServicePurchased;
import com.example.vmthealthycaresystemsbe.repository.IServicePurchasedRepository;
import com.example.vmthealthycaresystemsbe.service.IServicePurchasedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ServicePurchasedService implements IServicePurchasedService {
    @Autowired
    private IServicePurchasedRepository servicePurchasedRepository;
    @Override
    public Page<ServicePurchased> findAllByServicesName(Long customerId, Pageable pageable) {
        return this.servicePurchasedRepository.findAllByCustomer_Id(customerId, pageable);
    }
}
