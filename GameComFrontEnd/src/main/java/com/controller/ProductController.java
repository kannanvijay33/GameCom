package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.Dao.CategoryDAO;
import com.niit.Dao.ProductDAO;
import com.niit.Dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
@Controller
public class ProductController 

{
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute(product);
        m.addAttribute("category",this.getCategories());
        List<Product> listProduct=productDAO.retrieveProducts();
        m.addAttribute("ProductList",listProduct);
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
	
	public LinkedHashMap<Integer,String> getSupplieries()
	{
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		LinkedHashMap<Integer,String> supplierList=new LinkedHashMap<Integer,String>();
		for(Supplier supplier:listSupplier)
		{
			supplierList.put(supplier.getSupId(),supplier.getSupName());
		}
		return supplierList;
	}
	
	@RequestMapping(value="/updateProduct/{productId}",method=RequestMethod.GET)
	   public String updateCategory(@PathVariable("productId")int productId,Model m)
    {
		Product product=productDAO.getProduct(productId);
		m.addAttribute("product",product);
		System.out.println(product.getProductName());
		List<Product> listProduct=productDAO.retrieveProducts();
		m.addAttribute("ProductList",listProduct);
		return "UpdateProduct";
    
      }
  @RequestMapping(value="/UpdateProduct",method=RequestMethod.POST)
  public String updateCategory(@ModelAttribute("product") Product product,Model m)
    {
	  System.out.println(product.getProductName());
	  productDAO.updateProduct(product);
	  List<Product> listProduct=productDAO.retrieveProducts();
	  m.addAttribute("ProductList",listProduct);
	  return "UpdateProduct";
    }
	
  	@RequestMapping(value="InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
	  productDAO.addProduct(product);
		String path="D:\\Eclipse\\GameComFrontEnd\\src\\main\\webapp\\WEB-INF\\resources\\images\\";
		
		String totalFileWithPath=path+String.valueOf(product.getProductId())+".jpg";
		
		File productImage=new File(totalFileWithPath);

		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("FileException",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in File Uploading");
		}
		
		return "Product";
	}

  	@RequestMapping(value="/deleteProduct/{productId}",method=RequestMethod.GET)
    public String deleteProduct(@PathVariable("productId")int productId,Model m)
    {
  		Product product=productDAO.getProduct(productId);
  		productDAO.deleteProduct(product);
  		Product product1=new Product();
  		m.addAttribute(product1);
  		List<Product> listProduct=productDAO.retrieveProducts();
    	m.addAttribute("ProductList",listProduct);
    	return "Product";
  
    }
}

