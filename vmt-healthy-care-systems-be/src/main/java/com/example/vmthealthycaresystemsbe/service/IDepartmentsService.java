package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Departments;

import java.util.List;

public interface IDepartmentsService {
    List<Departments> findAll();

    Departments findById(Long id);
}
