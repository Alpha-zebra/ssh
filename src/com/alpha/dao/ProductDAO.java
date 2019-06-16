package com.alpha.dao;

import com.alpha.pojo.Product;

import java.util.List;

public interface ProductDAO {
    public List<Product> list();
    public void add(Product p);
    public void delete(int id);

    Product get(int id);

    void updateProduct(Product product);
//    public void update(int id);

}
