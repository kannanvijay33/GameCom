package com.niit.Daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Supplier;

@Repository
public class SupplierDAOImpl implements com.niit.Dao.SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFac) {
		super();
		sessionFac = sessionFactory;
	}

	@Transactional
	public boolean addSupplier(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		} catch (Exception e) {
			System.out.println("Exception arised");
			return false;
		}
	}

	@Transactional
	public List<Supplier> retrieveSupplier() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier");
		List<Supplier> listSupplier = query.list();
		session.close();
		return listSupplier;
	}

	@Transactional
	public boolean deleteSupplier(Supplier supplier) {
		try

		{
			sessionFactory.getCurrentSession().delete(supplier);

			return true;
		} catch (Exception e) {
			System.out.println("Exception arised");
			return false;
		}

	}

	@Transactional
	public Supplier getSupplier(int supplierId) {
		Session session = sessionFactory.openSession();
		Supplier supplier = (Supplier) session.get(Supplier.class, supplierId);
		session.close();
		return supplier;
	}

	@Transactional
	public boolean updateSupplier(Supplier supplier) {
		try

		{
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		} catch (Exception e) {
			System.out.println("Exception Arised:" + e);
			return false;
		}
	}

}
