package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Doctor;
import com.example.vmthealthycaresystemsbe.repository.IDoctorRepository;
import com.example.vmthealthycaresystemsbe.service.IDoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorService implements IDoctorService {
    @Autowired
    private IDoctorRepository doctorRepository;

    @Override
    public Doctor findByEmail(String email) {
        return this.doctorRepository.findByEmail(email).orElse(null);
    }

    @Override
    public List<Doctor> findAll() {
        return this.doctorRepository.findAll();
    }
}
