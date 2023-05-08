package com.example.vmthealthycaresystemsbe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Departments {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "varchar(50)", nullable = false)
    private String name;
    @OneToMany(mappedBy = "departments")
    @JsonBackReference
    private Set<Doctor> doctors;
    @OneToMany(mappedBy = "departments")
    @JsonBackReference
    private Set<Appointments> appointments;

    @OneToMany(mappedBy = "departments")
    @JsonBackReference
    private Set<Services> services;

    public Departments() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Doctor> getDoctors() {
        return doctors;
    }

    public void setDoctors(Set<Doctor> doctors) {
        this.doctors = doctors;
    }

    public Set<Appointments> getAppointments() {
        return appointments;
    }

    public void setAppointments(Set<Appointments> appointments) {
        this.appointments = appointments;
    }
}
