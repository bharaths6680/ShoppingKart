package com.niit.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDao;

import com.niit.models.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	 @RequestMapping(value = "/product")
	   public ModelAndView product() {
	      return new ModelAndView("productform", "command", new Product());
	   }
	   @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	      public String addProduct (@ModelAttribute("SpringWeb")Product product, ModelMap model,HttpServletRequest request) {
		   model.addAttribute("productID", product.getProductID());
		   model.addAttribute("productName", product.getProductName());
		   model.addAttribute("productPrice", product.getProductPrice());
		   model.addAttribute("productDescription", product.getProductDescription());
		   model.addAttribute("productDiscount", product.getProductDiscount());
		   productDao.addProduct(product);
		   MultipartFile img=product.getImage();//Defining a path
		   System.out.println(request.getServletContext().getRealPath("/"));
			Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getProductID()+".jpg");
			
			//Create a file in the path
			try {
				if(img!=null && !img.isEmpty()){
				File file=new File(path.toString());
				System.out.println(path);
				img.transferTo(file);
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   List<Product> plist=productDao.getAllProduct();
			   model.addAttribute("prodlist",plist);
			   return "Productdisplay";
}
	   @RequestMapping(value="/getproduct", method=RequestMethod.GET)
	   public ModelAndView getAllProduct() {
		List<Product> productlist=productDao.getAllProduct();
		ModelAndView mn=new ModelAndView("Productform","command",new Product());
		mn.addObject("prodlist",productlist);
		return mn;
		
}
}
