package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Departments;
import com.example.vmthealthycaresystemsbe.repository.IDepartmentsRepository;
import com.example.vmthealthycaresystemsbe.service.IDepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentsService implements IDepartmentsService {
    @Autowired
    private IDepartmentsRepository departmentsRepository;
    @Override
    public List<Departments> findAll() {
        return this.departmentsRepository.findAll();
    }

    @Override
    public Departments findById(Long id) {
        return this.departmentsRepository.findById(id).orElse(null);
    }
}
