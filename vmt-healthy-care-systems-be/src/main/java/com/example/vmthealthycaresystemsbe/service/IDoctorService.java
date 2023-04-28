package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Doctor;

import java.util.List;

public interface IDoctorService {
    Doctor findByEmail(String email);

    List<Doctor> findAll();
}
