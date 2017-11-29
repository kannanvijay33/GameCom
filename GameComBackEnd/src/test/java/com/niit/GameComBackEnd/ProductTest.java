/*package com.niit.GameComBackEnd;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;

public class ProductTest 
{
	 static ProductDAO productDAO;

	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configAnnlnContext=new AnnotationConfigApplicationContext();
		configAnnlnContext.scan("com.niit");
		configAnnlnContext.refresh();
		//		SessionFactory sessionFactory=(SessionFactory)configAnnlnContext.getBean("HiberConfig.class");
		productDAO=(ProductDAO)configAnnlnContext.getBean("ProductDAO");
	}
	
	@Transactional

	@Test
	public void  addProductTest()
	{
		Product product=new Product();
		//product.setProductId(150);
		product.setProductName("Game");
		product.setDescription("description");
		product.set
		product.setPrice(1500);
		product.setCatId(1002);
		product.setSupplierId(2503);
		
		assertTrue("Problem in Insertion",productDAO.addProduct(product));
	}
	@Ignore
	
	public void retrieveProductTest()
	{
		List<Product> listProducts=productDAO.retrieveProduct();
		
		assertTrue("List is empty",listProducts.size()>0);
		
		for(Product product:listProducts)
		{
			System.out.println("Product ID:"+product.getProductId());
			System.out.println("Product Name:"+product.getProductName());
			System.out.println("Product Desc:"+product.getProductDesc());
		}
	}

}
*/