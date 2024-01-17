package com.example.javaweb.services;

import com.example.javaweb.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void save(Product productNU);
    Product findById(Integer id);

    void remove(int idDelete);

//    Product findByName(String findName);

    List<Product> findName(String findName);
}
