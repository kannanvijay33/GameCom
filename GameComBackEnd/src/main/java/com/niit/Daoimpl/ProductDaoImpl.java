package com.niit.Daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;

@Repository
public class ProductDaoImpl implements ProductDAO
{	
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean addProduct(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().save(product);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	public boolean deleteProduct(Product product) {
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	public List<Product> retrieveProduct() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean updateProduct(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	public Product getProduct(int productId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
