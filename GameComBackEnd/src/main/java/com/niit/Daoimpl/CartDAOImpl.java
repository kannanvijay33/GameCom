package com.niit.Daoimpl;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CartDAO;
import com.niit.model.Cart;
@Repository("CartDAO")
public class CartDAOImpl implements CartDAO
{
			@Autowired
			SessionFactory sessionFactory;

@Transactional
public boolean insertCart(Cart cart) 
{
	try
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}
	catch(Exception e)
	{
		return false;
	}
}

@Transactional
public boolean updateCart(Cart cart) 
{
	try
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		return true;
	}
	catch(Exception e)
	{
		return false;
	}
}

@Transactional
public boolean deleteCart(Cart cart) 
{
	try
	{
		sessionFactory.getCurrentSession().delete(cart);
		return true;
	}
	catch(Exception e)
	{
		return false;
	}
}

public List<Cart> retrieveCart(int userId) 
{
	Session session = sessionFactory.openSession();
	Query query = session.createQuery("from Cart where userid=:userId").setInteger("userId", userId);
	List<Cart> listCart = query.list();
	session.close();
	return listCart;
}

public List<Cart> getCartById(int userId, int productId) 
{
	Session session = sessionFactory.openSession();
	List<Cart> cr = null;
	try
	{
		session.beginTransaction();
		cr=(List<Cart>)session.createQuery("from Cart where userid=:userId and productId=:productId")
				.setInteger("userId", userId)
				.setInteger("productId", productId)
				.list();
		session.getTransaction().commit();
	}
	catch(HibernateException e)
	{
		session.getTransaction().rollback();
		
	}
	return cr;
}

public List<Cart> checkCartExist(int userId, int productId)
{
	Session session = sessionFactory.openSession();
	List<Cart> cr = null;
	try
	{
		session.beginTransaction();
		cr = (List<Cart>)((Object) session.createQuery("from Cart ct where ct.userid=:userId and ct.productId=:productId")
				.setInteger("userId", userId)
				.setInteger("productId", productId))
				;
		session.getTransaction().commit();
	}
	catch(HibernateException e)
	{
		session.getTransaction().rollback();
		
	}
	return cr;

}

}
