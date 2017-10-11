package com.niit.Dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDAO 
{
	public boolean addProduct(Product product);
	public boolean deleteProduct(Product product);
	public List<Product> retrieveProduct();
	public boolean updateProduct(Product product);
	public Product getProduct(int productId);
}
