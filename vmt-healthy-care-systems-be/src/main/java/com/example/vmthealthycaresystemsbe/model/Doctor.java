package com.example.vmthealthycaresystemsbe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "varchar(255)", nullable = false)
    private String name;
    private boolean gender;
    @Column(columnDefinition = "varchar(50)", unique = true, nullable = false)
    private String idCard;
    @Column(columnDefinition = "varchar(50)", unique = true, nullable = false)
    private String phone;
    @Column(columnDefinition = "varchar(50)", unique = true, nullable = false)
    private String email;
    @Column(columnDefinition = "varchar(255)", nullable = false)
    private String address;
    @Column(columnDefinition = "varchar(50)", unique = true, nullable = false)
    private String dateOfBirth;
    @Column(columnDefinition = "text", nullable = false)
    private String img;
    @Column(columnDefinition = "bit(1)")
    private boolean flagDelete = false;
    @ManyToOne
    @JoinColumn(name = "departments_id", referencedColumnName = "id")
    private Departments departments;
    @OneToOne
    @JoinColumn(name = "account_id", referencedColumnName = "id")
    private Account account;
    @OneToMany(mappedBy = "doctor")
    @JsonBackReference
    private Set<Appointments> appointments;
    @OneToMany(mappedBy = "doctor")
    @JsonBackReference
    private Set<Services> services;

    public Doctor() {
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

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public boolean isFlagDelete() {
        return flagDelete;
    }

    public void setFlagDelete(boolean flagDelete) {
        this.flagDelete = flagDelete;
    }

    public Departments getDepartments() {
        return departments;
    }

    public void setDepartments(Departments departments) {
        this.departments = departments;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Set<Appointments> getAppointments() {
        return appointments;
    }

    public void setAppointments(Set<Appointments> appointments) {
        this.appointments = appointments;
    }

    public Set<Services> getServices() {
        return services;
    }

    public void setServices(Set<Services> services) {
        this.services = services;
    }
}
