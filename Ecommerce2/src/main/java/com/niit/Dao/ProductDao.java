package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.models.Product;

@Repository("productDao")
public interface ProductDao {
	public void addProduct(Product product);

	void updateProduct(Product product);

	Product getProduct(int productID);

	public void deleteProduct(int productID);

	public List<Product> getAllProduct();

}
