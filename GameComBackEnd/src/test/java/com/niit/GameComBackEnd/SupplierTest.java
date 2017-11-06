package com.niit.GameComBackEnd;

import static org.junit.Assert.*;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.Dao.SupplierDAO;
import com.niit.model.Supplier;
public class SupplierTest 
{
	static SupplierDAO supplierDAO;
		@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
		SupplierDAO supplierDao=(SupplierDAO)configApplnContext.getBean("SupplierDao");
	}
	
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupId(102);
		supplier.setSupName("Game");
		supplier.setSupAddress("India");
		assertTrue(supplierDAO.addSupplier(supplier));
		}
}
