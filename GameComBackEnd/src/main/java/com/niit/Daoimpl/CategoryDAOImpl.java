package com.niit.Daoimpl;


import java.util.List;
import java.util.Locale.Category;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.CategoryDao;


@Repository("categoryDao")
public class CategoryDAOImpl implements CategoryDao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public boolean addCategory(com.niit.model.Category category)
	{
		try
		{
			sessionFactory.getCurrentSession().save(category);
			return true;
		}
		catch(Exception e)
		{
		return false;
	}
}

	@Override
	public List<Category> retrieveCategory() 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> listCategory=query.list();
		session.close();
		return listCategory;
	}
	@Override
	public boolean deleteCategory(com.niit.model.Category category) {
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}
	@Override
	public Category getCategory(int cadId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Transactional
	@Override
	public boolean updateCategory(com.niit.model.Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
			
		}
		catch(Exception e)
		{
			return false;	
		}
		
	}
}