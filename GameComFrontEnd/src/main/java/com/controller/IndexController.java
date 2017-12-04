package com.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDAO;
import com.niit.Dao.UserDao;
import com.niit.model.Customer;
import com.niit.model.Product;
@Controller
public class IndexController 
{
	@Autowired
	UserDao userDao;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/userLogged")
	public String userLogged()
	{
		return "index";
	}

	@RequestMapping({"/","/home"})
	public String home(Model m)
	{
		List<Product> listProduct=productDAO.LatestretrieveProducts();
    	m.addAttribute("listProduct",listProduct);
		return "index";
	}
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	   public ModelAndView goToRegister()
	   {
		   ModelAndView mv=new ModelAndView(); 
	       mv.addObject("user",new Customer());
	       mv.setViewName("register");
	       System.out.println("register");
	       return mv;
		   }
	
	   @RequestMapping(value="saveregister", method=RequestMethod.POST)
	   public ModelAndView saveUser(@ModelAttribute("user")Customer user)
	   {
	       ModelAndView mv=new ModelAndView();
		   user.setRole("ROLE_USER");
		   userDao.insertUser(user);
		   mv.setViewName("index");
		   return mv;
	   }
	   
	   @RequestMapping(value="aboutus", method=RequestMethod.GET)
	   public ModelAndView goToaboutus()
	   {
		   ModelAndView mv=new ModelAndView();      
	       mv.setViewName("aboutus");
	       return mv;
		   }
	   @RequestMapping("/404")
		public String accessdenied()
		{
			return "404";
		}
	   
	     
	 }