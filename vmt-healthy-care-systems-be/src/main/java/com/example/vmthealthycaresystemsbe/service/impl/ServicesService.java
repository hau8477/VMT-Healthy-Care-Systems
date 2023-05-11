package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Services;
import com.example.vmthealthycaresystemsbe.repository.IServicesRepository;
import com.example.vmthealthycaresystemsbe.service.IServicesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ServicesService implements IServicesService {
    @Autowired
    private IServicesRepository servicesRepository;
    @Override
    public Page<Services> findAllByCategoryAndName(Long categoryId, String name, Pageable pageable) {
        return this.servicesRepository.findAllByCategory_IdAndNameContaining(categoryId, name, pageable);
    }

    @Override
    public Services findById(Long id) {
        return this.servicesRepository.findById(id).orElse(null);
    }
}
