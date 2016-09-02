package com.niit.skart.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.skartbackend.dao.Categorydao;
import com.niit.skartbackend.dao.Productdao;
import com.niit.skartbackend.dao.Supplierdao;
import com.niit.skartbackend.model.Category;
import com.niit.skartbackend.model.Product;
import com.niit.skartbackend.model.Supplier;

@Controller
public class Productcontroller {

	@Autowired(required = true)
	private Productdao productdao;

	@Autowired(required = true)
	private Categorydao categorydao;

	@Autowired(required = true)
	private Supplierdao supplierdao;

	@RequestMapping(value = "/productlist", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productdao.list());
		model.addAttribute("categoryList", this.categorydao.list());
		model.addAttribute("supplierList", this.supplierdao.list());
		return "productlist";
	}
	
	/*@ModelAttribute("product")
	public Product getObject()
	{
		
		return new Product() ;
	}*/

	@RequestMapping(value = "/productlist/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {

		Category category = categorydao.getByName(product.getCategory().getType());
		categorydao.saveOrUpdate(category);

		Supplier supplier = supplierdao.getByName(product.getSupplier().getName());
		supplierdao.saveOrUpdate(supplier);

		product.setCategory(category);
		product.setSupplier(supplier);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		
		//String name = file.getOriginalFilename();
       // String path="C:/Users/RAMESH J/workspace/Skart/src/main/webapp/WEB-INF/resource";
       //String path = "C:\\skart\\img";
       /* if (!file.isEmpty()) {
            try {
            	
            	File imgDirectory = new File(path);
            	if(!imgDirectory.exists())
            	{
            		imgDirectory.mkdir();
            	}
            	
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(path+"\\"+name)));
                stream.write(bytes);
                stream.close();
               // return "You successfully uploaded " + name + " into " + name + "-uploaded !";
            } catch (Exception e) {
                //return "You failed to upload " + name + " => " + e.getMessage();
            	
            }
        } else {
           // return "You failed to upload " + name + " because the file was empty.";
        }
		
		product.setFile(file);*/
		productdao.saveOrUpdate(product);

		return "redirect:/productlist";

	}

	@RequestMapping("productlist/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productdao.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/productlist";
	}

	/*
	 * @RequestMapping(value="/productlist/add", method = RequestMethod.POST)
	 * 
	 * public String addProduct(@ModelAttribute("product") Product product){
	 * productdao.saveOrUpdate(product); return "redirect:/productlist";
	 * 
	 * }
	 * 
	 * @RequestMapping("productlist/remove/{id}") public String
	 * removeProduct(@PathVariable("id") String id,ModelMap model) throws
	 * Exception{
	 * 
	 * try { productdao.delete(id); model.addAttribute("message",
	 * "Successfully Added"); } catch (Exception e) {
	 * model.addAttribute("message",e.getMessage()); e.printStackTrace(); }
	 * //redirectAttrs.addFlashAttribute(arg0, arg1) return
	 * "redirect:/productlist"; }
	 */

	@RequestMapping("productlist/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("edit");
		model.addAttribute("product", this.productdao.get(id));
		System.out.println(id);
		model.addAttribute("listProduct", this.productdao.list());
		model.addAttribute("categoryList", this.categorydao.list());
		model.addAttribute("supplierList", this.supplierdao.list());
		return "productlist";

	}

	@RequestMapping("productlist/get/{id}")
	public String getProduct(@PathVariable("id") String id, Model model) {
		System.out.println(id);
		model.addAttribute("categoryList", this.categorydao.list());
		model.addAttribute("selectedProduct", this.productdao.get(id));

		return "/adminhome";
	}

	@RequestMapping("prodinfo")
    public String get(@RequestParam("id") String id,HttpServletRequest req,Model model){
		System.out.println("product info");
		//req.getParameter("id");
		System.out.println(id);
		Product p=productdao.get(id);
		Gson gson=new Gson();
	    String prod=gson.toJson(p);
		model.addAttribute("productinfo",prod);
		System.out.println(prod);
		return "prodinfo";
        }

	
}
	
	
	
