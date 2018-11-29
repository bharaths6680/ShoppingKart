package com.niit.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CustomerDao;
import com.niit.models.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao customerDao;

		   @RequestMapping(value = "/customer", method = RequestMethod.GET)
		   public ModelAndView customer() {
		      return new ModelAndView("Customerf", "command", new Customer());
		   }
		   @RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
		      public String addCustomer(@ModelAttribute("sprigweb")Customer customer, ModelMap model) {
		      model.addAttribute("id", customer.getId());
		      model.addAttribute("firstname", customer.getFirstname());
		      model.addAttribute("lastname", customer.getLastname());
		      model.addAttribute("password", customer.getPassword());
		      model.addAttribute("birth", customer.getBirth());
		      model.addAttribute("phonenumber", customer.getPhonenumber());
		      customerDao.addCustomer(customer);
		      return "redirect:/customer";
		   }
		   @RequestMapping(value="/getcustomer",method=RequestMethod.GET)
			   public ModelAndView getAllCustomer() {
			   List<Customer> customerlist=customerDao.getAllCustomer();
			   ModelAndView mn=new ModelAndView("Customerf", "command", new Customer());
			   mn.addObject("custlist",customerlist);
			   return mn;
			   
		   }
		}

