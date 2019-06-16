package com.alpha.dao.impl;

import com.alpha.dao.ProductDAO;
import com.alpha.pojo.Product;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.List;

public class ProductDAOImpl extends HibernateTemplate implements ProductDAO {
    @Override
    public List<Product> list() {
        return find("from Product");
    }

    @Override
    public void add(Product p) {
        save(p);
    }

    @Override
    public void delete(int id) {
        Product p= get(Product.class,id);
        delete(p);
    }

    @Override
    public Product get(int id) {
        return get(Product.class,id);
    }

    @Override
    public void updateProduct(Product product) {
        update(product);
    }

//
//    @Override
//    public void update(int id) {
//        update(id);
//    }
}
