package com.example.javaweb.services;


import com.example.javaweb.model.Product;
import com.example.javaweb.repository.ImlProductRepositories;

import java.util.List;

public class ImlProductServices implements IProductServices {
    private final ImlProductRepositories imlProductRepositories = new ImlProductRepositories();

    public List<Product> findAll() {
        return imlProductRepositories.findAll();
    }

    public void save(Product productNew) {
        imlProductRepositories.save(productNew);
    }

    @Override
    public Product findById(Integer code) {
        return null;
    }
}
