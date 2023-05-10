package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Services;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IServicesService {
    Page<Services> findAllByCategoryAndName(Long categoryId, String name, Pageable pageable);
}
