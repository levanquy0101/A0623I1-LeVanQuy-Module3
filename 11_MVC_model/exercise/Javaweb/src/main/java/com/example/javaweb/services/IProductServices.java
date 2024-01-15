package com.example.javaweb.services;

import com.example.javaweb.model.Product;

import java.util.List;

public interface IProductServices {
    List<Product> findAll();
    void save(Product productNU);
    Product findById(Integer id);

    void remove(int idDelete);

    Product findByName(String findName);
}
