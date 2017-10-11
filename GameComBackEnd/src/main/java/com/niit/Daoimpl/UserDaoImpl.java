package com.niit.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.UserDao;
import com.niit.model.User;


@Repository 
public class UserDaoImpl implements UserDao
{ 
    @Autowired 
    SessionFactory sessionFac;
    public void insertUser(User user) {
      Session session=sessionFac.openSession();
      session.beginTransaction();
      session.persist(user);
      session.getTransaction().commit();
      }
    @Autowired
    public UserDaoImpl(SessionFactory sessionFactory)
    {
      super();
      sessionFac=sessionFactory;
    }
	public void inserUser(User user) {
		// TODO Auto-generated method stub
		
	}
	
}
