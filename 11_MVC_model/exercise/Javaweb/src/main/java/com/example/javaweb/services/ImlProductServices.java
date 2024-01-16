package com.example.javaweb.services;


import com.example.javaweb.model.Product;
import com.example.javaweb.repository.ImlProductRepositories;

import java.util.List;

public class ImlProductServices implements IProductServices {
    private final ImlProductRepositories imlProductRepositories = new ImlProductRepositories();

    public List<Product> findAll() {
        return imlProductRepositories.findAll();
    }

    public void save(Product productNU) {
        imlProductRepositories.save(productNU);
    }

    @Override
    public Product findById(Integer id) {
        return imlProductRepositories.findById(id);
    }

    @Override
    public void remove(int idDelete) {
        imlProductRepositories.remove(idDelete);
    }

//    @Override
//    public Product findByName(String findName) {
//        return imlProductRepositories.findByName(findName);
//    }

    @Override
    public List<Product> findName(String findName) {
        return imlProductRepositories.findName(findName);
    }

}
