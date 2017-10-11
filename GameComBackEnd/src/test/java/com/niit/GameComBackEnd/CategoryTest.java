package com.niit.GameComBackEnd;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.CategoryDao;
import com.niit.model.Category;

public class CategoryTest {
	
	static CategoryDao categoryDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
//		SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("CategoryDao");
		
		CategoryDao categoryDao=(CategoryDao)configApplnContext.getBean("CategoryDao");
	}
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1001);
		category.setCatName("The Crew (PC DVD)");
		category.setCatDesc("The Crew supported only on windows xp and windows 7");
		
		assertTrue(categoryDao.addCategory(category));
	}

	@Ignore
	@Test
	public void updateCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1002);
		category.setCatName("Call of Duty: Infinite Warfare (PS4)");
		category.setCatDesc("Call of Duty: Infinite Warfare supported only on playstations");
		
		assertTrue(categoryDao.updateCategory(category));
	}
	
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category=new Category();
		category.setCatId(1002);
		category.setCatName("Call of Duty: Infinite Warfare (PS4)");
		category.setCatDesc("Call of Duty: Infinite Warfare supported only on playstations");
		
		assertTrue(categoryDao.deleteCategory(category));
	}
}
