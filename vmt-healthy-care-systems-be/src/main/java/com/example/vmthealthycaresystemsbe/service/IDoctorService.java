package com.example.vmthealthycaresystemsbe.service;

import com.example.vmthealthycaresystemsbe.model.Doctor;

public interface IDoctorService {
    Doctor findByEmail(String email);
}
