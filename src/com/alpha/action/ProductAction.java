package com.alpha.action;

import com.alpha.pojo.Product;
import com.alpha.service.ProductService;

import java.util.List;

public class ProductAction {
    ProductService productService;
    List<Product> products;
    Product product;


    public String list(){
        System.out.println(this);
        products=productService.list();
        return "listJsp";
    }
    public String delete(){
//        如何接受传递过来的值;
//        product=
        products.remove(product);
        productService.delete(product);
        return "list";

    }
    public String edit(){
        System.out.println("developing edit function");
//        product=products.get(product.getId());
        product=productService.get(product.getId());
        return "edit";
    }
    public String update(){
//        System.out.println("developing update function");
//        test();
        Product p=productService.get(product.getId());
        p.setName(product.getName());
        p.setPrice(product.getPrice());
        productService.updateProduct(p);
        return "list";
    }
    public void test(){
        System.out.println(product.getId());
        System.out.println(product.getName());
        System.out.println(product.getPrice());
    }
    public String add(){
        System.out.println("developing add function");
        test();
        productService.add(product);
        return "list";
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public ProductService getProductService() {
        return productService;
    }

    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
