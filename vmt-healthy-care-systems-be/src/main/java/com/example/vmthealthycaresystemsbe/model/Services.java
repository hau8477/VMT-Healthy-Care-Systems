package com.example.vmthealthycaresystemsbe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Set;

@Entity
public class Services implements Comparable<Services>{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "text", unique = true, nullable = false)
    private String name;
    private double prices;
    private String time;
    @Column(columnDefinition = "text")
    private String details;
    private boolean flagDelete;
    private String timeUse;
    @Column(columnDefinition = "text")
    private String applicableObject;
    @Column(columnDefinition = "text")
    private String subTitle;
    private String date;

    private int quantity;
    @Column(columnDefinition = "text")
    private String img;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public int compareTo(Services o) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate thisDate = LocalDate.parse(date, formatter);
        LocalDate otherDate = LocalDate.parse(o.date, formatter);
        return thisDate.compareTo(otherDate);
    }
}
