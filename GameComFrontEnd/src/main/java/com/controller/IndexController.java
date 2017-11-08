package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Daoimpl.Userdaoimpl;
import com.niit.model.User;
@Controller
public class IndexController {
	@Autowired
	Userdaoimpl userdaoimpl;
	

	@RequestMapping({"/","/home"})
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	   public ModelAndView goToRegister()
	   {
		   ModelAndView mv=new ModelAndView(); 
	       mv.addObject("user",new User());
	       mv.setViewName("register");
	       System.out.println("register");
	       return mv;
		   }
	
	   @RequestMapping(value="saveregister", method=RequestMethod.POST)
	   public ModelAndView saveUser(@ModelAttribute("user")User user)
	   {
	       ModelAndView mv=new ModelAndView();
		   user.setRole("ROLE_USER");
		   userdaoimpl.insertUser(user);
		   System.out.println("User is registered successfully");
		   mv.setViewName("index");
		   return mv;
	   }
	   
	   
	   
	}