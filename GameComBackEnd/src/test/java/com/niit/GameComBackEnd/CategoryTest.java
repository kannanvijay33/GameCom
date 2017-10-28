package com.niit.GameComBackEnd;
import static org.junit.Assert.*;
import java.util.List;
import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.CategoryDAO;
import com.niit.model.Category;
public class CategoryTest 
{
	static CategoryDAO categoryDAO;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configAnnlnContext=new AnnotationConfigApplicationContext();
		configAnnlnContext.scan("com.niit");
		configAnnlnContext.refresh();
		//		SessionFactory sessionFactory=(SessionFactory)configAnnlnContext.getBean("HiberConfig.class");
		categoryDAO=(CategoryDAO) configAnnlnContext.getBean("categoryDAO");
	}
	
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCatId(11);
		category.setCatName("Gaming CD's");
		category.setCatDesc("Gaming CD for laptop and Desktop");
		
		assertTrue(categoryDAO.addCategory(category));
	}
	
	@Ignore

	public void updateCategoryTest()
	{
		Category category=new Category();
		category.setCatId(125);
		category.setCatName("Gaming CD's");
		category.setCatDesc("Gaming CD for laptop");
		
		assertTrue(categoryDAO.updateCategory(category));

	}
	
	@Ignore
	
	public void deleteCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1250);
		assertTrue(categoryDAO.deleteCategory(category));
	}
	
	@Ignore
	public void retrieveCategoryTest()
	{
		List<Category> listCategory=categoryDAO.retrieveCategory();
		assertNotNull("Problem in Retriving",listCategory);
		this.show(listCategory);
	}

	@Ignore
	private void show(List<Category> listCategory) 
	{
		for(Category category:listCategory)
		{
			System.out.println("Category ID:"+category.getCatId());
			System.out.println("Category Name:"+category.getCatName());
		}
		
	}
	
	@Ignore

	public void getCategoryTest()
	{
		Category category=categoryDAO.getCategory(1250);
		assertNotNull("Problem in Getting",category);
		System.out.println("Category ID:"+category.getCatId());
		System.out.println("Category Name:"+category.getCatName());
		
	}
	
}
