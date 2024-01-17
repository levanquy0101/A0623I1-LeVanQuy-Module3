package com.example.javaweb.services;


import com.example.javaweb.model.Product;
import com.example.javaweb.repository.ImlProductRepository;

import java.util.List;

public class ImlProductService implements IProductService {
    private final ImlProductRepository imlProductRepository = new ImlProductRepository();

    public List<Product> findAll() {
        return imlProductRepository.findAll();
    }

    public void save(Product productNU) {
        imlProductRepository.save(productNU);
    }

    @Override
    public Product findById(Integer id) {
        return imlProductRepository.findById(id);
    }

    @Override
    public void remove(int idDelete) {
        imlProductRepository.remove(idDelete);
    }

//    @Override
//    public Product findByName(String findName) {
//        return imlProductRepository.findByName(findName);
//    }

    @Override
    public List<Product> findName(String findName) {
        return imlProductRepository.findName(findName);
    }

}
