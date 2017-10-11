package com.niit.Config;
import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import com.niit.Dao.UserDao;
import com.niit.Daoimpl.UserDaoImpl;
import com.niit.model.Category;
import com.niit.model.User;
@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")
public class HiberConfig 
{
	@Autowired 
	@Bean(name="datasource")
	public DataSource getH2data()
	{
		System.out.println("Hiberanate initiated....");
		DriverManagerDataSource dsource=new DriverManagerDataSource();
		dsource.setDriverClassName("org.h2.Driver");
		dsource.setUrl("jdbc:h2:~/GameCom");
		dsource.setUsername("sa");
		dsource.setPassword("");
		System.out.println("H2 Connected...");
		return dsource;
	}
private Properties getHiberProps()
{
	Properties p = new Properties();
	p.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	p.put("hibernate.hbm2ddl.auto", "update");
	p.put("hibernate.show_sql", "true");
	
	System.out.println("Data table created in H2");
	return p;
}
@Autowired
@Bean(name= "sessionFactory")
public SessionFactory getSession(DataSource datasource)
{
		LocalSessionFactoryBuilder sb = new LocalSessionFactoryBuilder(datasource);
		sb.addProperties(getHiberProps());
		sb.addAnnotatedClass(User.class);
		sb.addAnnotatedClass(Category.class);
		SessionFactory sessionFactory=sb.buildSessionFactory();
		System.out.println("Session Factory is created");
	    return sessionFactory;	    
}
@Autowired
@Bean(name="UserDaoImpl")
public UserDao getUserData(SessionFactory sessionFac)
{
	return new UserDaoImpl(sessionFac);
}
@Autowired
@Bean(name="transactionManager")
public HibernateTransactionManager getTransaction(SessionFactory sessionFactory)
{
	HibernateTransactionManager tm = new HibernateTransactionManager(sessionFactory);
	return tm;
}

}