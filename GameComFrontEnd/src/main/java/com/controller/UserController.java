package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.User;

@Controller
public class UserController 
{
	@RequestMapping("/register")
	public String goToregister(Model model)
	{
		model.addAttribute("user",new User());
		return "register";
	}
	
}
