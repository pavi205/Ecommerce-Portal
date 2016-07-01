package com.niit.skart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.skartbackend.dao.Productdao;
import com.niit.skartbackend.model.Product;

@Controller
public class Productcontroller{

@Autowired
	private Productdao productdao;
@Qualifier(value="productdao")
public void setProductdao(Productdao ps){
this.productdao = ps;
}

@RequestMapping(value = "/productlist", method = RequestMethod.GET)
public String listProduct(Model model) {
model.addAttribute("product", new Product());
model.addAttribute("productList", this.productdao.list());
return "productlist";
}


@RequestMapping(value="/productlist/add", method = RequestMethod.POST)

public String addCategory(@ModelAttribute("product") Product product){
productdao.saveOrUpdate(product);
return "redirect:/productlist";

}

@RequestMapping("productlist/remove/{id}")
public String removeCategory(@PathVariable("id") String id,ModelMap model) throws Exception{

try {
productdao.delete(id);
model.addAttribute("message","Successfully Added");
} catch (Exception e) {
model.addAttribute("message",e.getMessage());
e.printStackTrace();
}
//redirectAttrs.addFlashAttribute(arg0, arg1)
return "redirect:/productlist";
}

@RequestMapping("productlist/edit/{id}")
public String editCategory(@PathVariable("id") String id, Model model){
System.out.println("edit");
model.addAttribute("product", this.productdao.get(id));
model.addAttribute("listProduct", this.productdao.list());
return "productlist";

}
/*@RequestMapping("/delete")
public ModelAndView delete(@ModelAttribute Category category) {
System.out.println("am in delete Category");
categorydao.saveOrUpdate(category);
return new ModelAndView("/delete");
}*/
/*		
@RequestMapping("/categorylist")
	public ModelAndView getAllCategories() {

 System.out.println("am in category controller");
		
		List<Category> categoryList =  categorydao.list();
		System.out.println();			
		ModelAndView mv = new ModelAndView("/categorylist");
		for(Category c :categoryList)
		{
			System.out.println(c.getId());
		    System.out.println(c.getName());
		    System.out.println(c.getDescription());
		}
		mv.addObject("categoryList", categoryList);
	
		return mv;
		
		
	}
	*/
	
	
	
}
