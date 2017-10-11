package com.niit.GameComBackEnd;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.ProductDAO;

public class ProductDAOTest {

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
		ProductDAO productDAO = (ProductDAO)configApplnContext.getBean("productDAO");
	}
	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
