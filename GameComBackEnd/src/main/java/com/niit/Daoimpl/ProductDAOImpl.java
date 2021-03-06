package com.niit.Daoimpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;
@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addProduct(Product product) 
	{
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		return true;
	    }
	     catch(Exception e)
	    {
	    	 System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	@Transactional
	public boolean deleteProduct(Product product) 
	{
		try
		{
		sessionFactory.getCurrentSession().delete(product);
		return true;
	    }
	     catch(Exception e)
	    {
	    	System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	@Transactional
		public List<Product> retrieveProducts() 
		{
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("From Product");
			List<Product>listProduct=(query).list();
			session.close();
			return listProduct;
			
	}
	@Transactional
	public Product getProduct(int productId)
	{
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get( Product.class,productId);
		session.close();
			return product;
	}
	@Transactional
	public boolean updateProduct(Product Product) 
	{
		try
	    
		{
		sessionFactory.getCurrentSession().update(Product);
		return true;
	    }
	     catch(Exception e)
	    {
	    	 System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	public void saveProduct(Product product) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
	}
	public List<Product> LatestretrieveProducts()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("From Product p ORDER BY p.productId DESC");
		query.setMaxResults(5);
		List<Product> listProduct=(query).list();
		session.close();
		return listProduct;
	}
}

