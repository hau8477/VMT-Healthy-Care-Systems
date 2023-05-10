package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Category;
import com.example.vmthealthycaresystemsbe.repository.ICategoryRepository;
import com.example.vmthealthycaresystemsbe.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService implements ICategoryService {
    @Autowired
    private ICategoryRepository categoryRepository;
    @Override
    public Category findById(Long id) {
        return this.categoryRepository.findById(id).orElse(null);
    }
}
