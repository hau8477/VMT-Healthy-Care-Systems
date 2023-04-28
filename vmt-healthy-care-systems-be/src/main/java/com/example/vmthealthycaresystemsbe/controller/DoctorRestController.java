package com.example.vmthealthycaresystemsbe.controller;

import com.example.vmthealthycaresystemsbe.model.Doctor;
import com.example.vmthealthycaresystemsbe.service.IDoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.print.Doc;
import java.util.List;

@RestController
@RequestMapping("api/doctors")
@CrossOrigin("*")
public class DoctorRestController {
    @Autowired
    private IDoctorService doctorService;

    @GetMapping("/details/{email}")
    public ResponseEntity<Doctor> findByEmail(@PathVariable String email){
        Doctor doctor = this.doctorService.findByEmail(email);

        if (doctor == null) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(doctor, HttpStatus.OK);
    }

    @GetMapping("/findAll")
    public ResponseEntity<List<Doctor>> findAll() {
        List<Doctor> doctors = this.doctorService.findAll();

        if (doctors.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(doctors, HttpStatus.OK);
    }
}
