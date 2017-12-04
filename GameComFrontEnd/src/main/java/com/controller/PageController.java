package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDAO;
import com.niit.model.Customer;


@Controller
public class PageController 
{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/register")
	public String goToregister(Model model)
	{
		model.addAttribute("user",new Customer());
		return "register";
	}
	
	

	@RequestMapping("/Login")
	public String login(@RequestParam(value = "error", required = false) String error, 
			@RequestParam(value = "logout", required = false) String logout, Model model)
	{
		
		if(error != null) {
			model.addAttribute("error", "Username or Password Incorrect");
			}
		
		if(logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
			}
		return "Login";
		}
	
	@RequestMapping("/403")
	public String Errorpage(Model m)
	{
		return "403";
	}
	/*
	@RequestMapping("/aboutus")
	public ModelAndView Aboutus() 
	{

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("title","Aboutus");
		mv.addObject("isUserClickedAboutus", "true");
		return mv;
	}*/
	
	}