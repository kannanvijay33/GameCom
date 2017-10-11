package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*import com.niit.Daoimpl.UserDaoImpl;
import com.niit.model.User;*/

@Controller
public class IndexController {
	
	
	@Autowired
	/*UserDaoImpl userDaoImpl;*/

	/*
	 * @Autowired CategoryDaoImpl catDaoImpl;
	 */

	@RequestMapping("/")
	public String index()

	{
		return "index";
	}
	/*
	 * @RequestMapping("/register") public String registration() { return
	 * "register"; }
	 */

	/*@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView goToRegister() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User());
		mv.setViewName("register");
		return mv;
	}

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user) {
		ModelAndView mv = new ModelAndView();
		user.setRole("ROLE_USER");
		userDaoImpl.insertUser(user);
		mv.setViewName("index");
		return mv;
	}
*/
}
