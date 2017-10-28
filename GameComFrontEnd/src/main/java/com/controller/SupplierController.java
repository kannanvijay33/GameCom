package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.Dao.SupplierDAO;
import com.niit.model.Supplier;
@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;
	@RequestMapping(value="AddSupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
	{
		supplierDAO.addSupplier(supplier);
	
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		m.addAttribute("SupplierList",listSupplier);
		
		return "Supplier";
	}
	@RequestMapping(value="supplier",method=RequestMethod.GET)
	public String showProduct(Model m)
	{
		Supplier supplier=new Supplier();
		m.addAttribute(supplier );
        
	return "Supplier";
	}
	
	
}
