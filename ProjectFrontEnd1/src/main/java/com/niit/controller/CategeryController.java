package com.niit.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategeryDao;
import com.niit.models.Categery;
import com.niit.models.Product;

@Controller
public class CategeryController {
	@Autowired
	CategeryDao categeryDao;
	
	
	   @RequestMapping(value = "/categery", method = RequestMethod.GET)
	   public ModelAndView categery() {
	      return new ModelAndView("Categeryf", "command", new Categery());
	   }
	   @RequestMapping(value = "/addCategery", method = RequestMethod.POST)
	      public String addCategery(@ModelAttribute("springweb")Categery categery, ModelMap model) 
	   {
	      model.addAttribute("name", categery.getName());
	      model.addAttribute("id", categery.getId());
	      categeryDao.addCategery(categery);
	      return "redircet:/categery";
	   }
	   @RequestMapping(value="/getcategery", method=RequestMethod.GET)
	   public ModelAndView getAllCategery() {
		List<Categery> categerylist=categeryDao.getAllCategery();
		ModelAndView mn=new ModelAndView("Categeryf","command",new Categery());
		mn.addObject("catlist",categerylist);
		return mn;
	   }   
}
	
