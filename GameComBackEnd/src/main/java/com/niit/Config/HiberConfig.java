package com.niit.Config;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.Supplier;
@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")

public class HiberConfig {
	private static final String SessionFactory = null;
	@Autowired
	@Bean(name = "dataSource")
	public DataSource getH2data() {
		System.out.println("Hiberanate initiated....");
		DriverManagerDataSource dsource = new DriverManagerDataSource();
		dsource.setDriverClassName("org.h2.Driver");
		dsource.setUrl("jdbc:h2:tcp://localhost/~/GameCom");
		dsource.setUsername("sa");
		dsource.setPassword("");
		System.out.println("H2 Connected...");
		return dsource;
	}

	private Properties getHiberProps() {
		Properties p = new Properties();
		p.put("hibernate.hbm2ddl.auto", "update");
		p.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		p.put("hibernate.show_sql", "true");

		System.out.println("Data table created in H2");
		return p;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSession(DataSource datasource)
	{
		LocalSessionFactoryBuilder sb = new LocalSessionFactoryBuilder(datasource);
		sb.addProperties(getHiberProps());
		sb.addAnnotatedClass(BillingAddress.class);
		sb.addAnnotatedClass(Cart.class);
		sb.addAnnotatedClass(CartItem.class);
		sb.addAnnotatedClass(Category.class);
		sb.addAnnotatedClass(Customer.class);
		sb.addAnnotatedClass(CustomerOrder.class);
		sb.addAnnotatedClass(Product.class);
		sb.addAnnotatedClass(ShippingAddress.class);
		sb.addAnnotatedClass(Supplier.class);
	
		SessionFactory sessionFactory = sb.buildSessionFactory();
		System.out.println("Session Factory is created");
		return sessionFactory;
	}

	/*@Autowired
	@Bean(name="Userdaoimpl")
	public UserDao getUserData(SessionFactory sessionFac) 
	{
		return new UserDaoImpl(sessionFac);
	}*/
	
	@Autowired
	@Bean
	public HibernateTransactionManager getTransaction(SessionFactory sessionFactory) {
		HibernateTransactionManager tm = new HibernateTransactionManager(sessionFactory);
		return tm;
	}

}