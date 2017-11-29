package com.niit.Dao;





import com.niit.model.Customer;
public interface UserDao {
	public void insertUser(Customer user);

	public Customer customerbyemail(String email);

}
