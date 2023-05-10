package com.example.vmthealthycaresystemsbe.repository;

import com.example.vmthealthycaresystemsbe.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICategoryRepository extends JpaRepository<Category, Long> {
}
