package com.example.vmthealthycaresystemsbe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Services {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "varchar(255)", unique = true, nullable = false)
    private String name;
    private double prices;
    private String time;
    private String details;
    private boolean flagDelete;
    private String timeUse;
    private String applicableObject;
    private String subTitle;
    @ManyToOne
    @JoinColumn(name = "departments_id", referencedColumnName = "id")
    private Departments departments;
    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    private Category category;

    @OneToMany(mappedBy = "services")
    @JsonBackReference
    private Set<Cart> carts;

    @OneToMany(mappedBy = "services")
    @JsonBackReference
    private Set<ServicePurchased> servicePurchases;

    public Services() {
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

    public double getPrices() {
        return prices;
    }

    public void setPrices(double prices) {
        this.prices = prices;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Set<Cart> getCarts() {
        return carts;
    }

    public void setCarts(Set<Cart> carts) {
        this.carts = carts;
    }

    public Set<ServicePurchased> getServicePurchases() {
        return servicePurchases;
    }

    public void setServicePurchases(Set<ServicePurchased> servicePurchases) {
        this.servicePurchases = servicePurchases;
    }

    public String getTimeUse() {
        return timeUse;
    }

    public void setTimeUse(String timeUse) {
        this.timeUse = timeUse;
    }

    public String getApplicableObject() {
        return applicableObject;
    }

    public void setApplicableObject(String applicableObject) {
        this.applicableObject = applicableObject;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }
}
