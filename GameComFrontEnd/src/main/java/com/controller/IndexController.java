package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value="views/register", method=RequestMethod.GET)
	   public ModelAndView goToRegister()
	   {
		   ModelAndView mv=new ModelAndView(); 
	       mv.addObject("user",new User());
	       mv.setViewName("register");
	       return mv;
		   }
	
	   @RequestMapping(value="views/saveregister", method=RequestMethod.POST)
	   public ModelAndView saveUser(@ModelAttribute("user")User user)
	   {
	       ModelAndView mv=new ModelAndView();
		   user.setRole("ROLE_USER");
		   userdaoimpl.insertUser(user);
		   mv.setViewName("index");
		   return mv;
		
		
		
	   }
	}
