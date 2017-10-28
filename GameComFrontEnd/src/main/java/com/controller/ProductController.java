package com.controller;

import java.util.LinkedHashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.CategoryDAO;
import com.niit.Dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;
@Controller
public class ProductController 

{
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product );
        m.addAttribute("categoryList",this.getCategories());
	return "Product";
	}
	@RequestMapping(value="AddProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,Model m)
	{
		System.out.println(product.getProductName());
		productDAO.addProduct(product);

		
		return "Product";
	}
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDAO.retrieveCategory();
		LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories)
		{
			categoriesList.put(category.getCatId(),category.getCatName());
		}
	
		return categoriesList;
}
}

