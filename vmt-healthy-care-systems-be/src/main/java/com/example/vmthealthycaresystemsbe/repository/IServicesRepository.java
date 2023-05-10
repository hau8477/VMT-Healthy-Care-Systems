package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.Services;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IServicesRepository extends JpaRepository<Services, Long> {
    Page<Services> findAllByCategory_IdAndNameContaining(Long categoryId, String name, Pageable pageable);
}
