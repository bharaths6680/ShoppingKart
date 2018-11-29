package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.SupplierDao;
import com.niit.models.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDao supplierDao;
	
	
	   @RequestMapping(value = "/supplier", method = RequestMethod.GET)
	   public ModelAndView supplier() {
	      return new ModelAndView("Supplierf", "command", new Supplier());
	   }
	   
	   @RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	      public String addSupplier(@ModelAttribute("SpringWeb")Supplier supplier, ModelMap model) 
	   {
	      model.addAttribute("supplierID", supplier.getSupplierID());
	      model.addAttribute("supplierAddress", supplier.getSupplierAddress());
	      model.addAttribute("supplierPhonenumber", supplier.getSupplierPhonenumber());
	      supplierDao.addSupplier(supplier);
	     return "Supplierdisplay";
	   }
	   @RequestMapping(value="/getsupplier" ,method=RequestMethod.GET)
	   public ModelAndView getAllSupplier() {
		   List<Supplier> supplierlist=supplierDao.getAllSupplier();
		ModelAndView mn= new ModelAndView("Supplierf","command",new Supplier());
		   mn.addObject("suplist",supplierlist);
		   return mn;
	   }
	   }