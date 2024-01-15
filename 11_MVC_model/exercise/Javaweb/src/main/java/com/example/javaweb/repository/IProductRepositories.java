package com.example.javaweb.repository;

import com.example.javaweb.model.Product;

import java.util.List;

public interface IProductRepositories {
    List<Product> findAll();
    void save(Product productNU);
    Product findById(Integer id);

    void remove(int idDelete);
}
