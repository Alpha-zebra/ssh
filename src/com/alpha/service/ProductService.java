package com.alpha.service;

import com.alpha.pojo.Product;

import java.util.List;

public interface ProductService {
    public List<Product> list();

    void delete(Product p);

    Product get(int id);


    void updateProduct(Product product);

    void add(Product product);
}
