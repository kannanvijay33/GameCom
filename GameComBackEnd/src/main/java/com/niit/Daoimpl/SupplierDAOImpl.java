package com.niit.Daoimpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.SupplierDAO;
import com.niit.model.Supplier;
@Repository("SupplierDAO")
public class SupplierDAOImpl implements SupplierDAO
{
	@Autowired
	SessionFactory sessionFactory;
	public SupplierDAOImpl(SessionFactory sessionFac)
	{
		   super();
		   sessionFac=sessionFactory;
	}
	
	public boolean addSupplier(Supplier supplier)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
	    }
	     catch(Exception e)
	    {
	    	 System.out.println("Exception arised");
			return false;
		}
		
	}

	public List<Supplier> retrieveSupplier()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Supplier>listSupplier=query.list();
		session.close();
		return listSupplier;
	}

	public boolean deleteSupplier(Supplier supplier)
	{
		try
		{
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
	    }
	     catch(Exception e)
	    {
	    	 System.out.println("Exception arised");
	    	 return false;	
	    }
	}

	public Supplier getSupplier(int SupplierId) 
	{
		Session session=sessionFactory.openSession();
		Supplier category=(Supplier)session.get( Supplier.class,SupplierId);
		session.close();
		return category;
	}

	public boolean updateSupplier(Supplier supplier) 
	{
try
	    
		{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
	    }
	     catch(Exception e)
	    {
	    	 System.out.println("Exception Arised:"+e);
			return false;
		}

	}
	
}