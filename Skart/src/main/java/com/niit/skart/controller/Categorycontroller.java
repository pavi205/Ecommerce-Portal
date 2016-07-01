package com.niit.skart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.skartbackend.model.Category;

import com.niit.skartbackend.dao.Categorydao;

@Controller
	public class Categorycontroller{
	
@Autowired
		private Categorydao categorydao;
@Qualifier(value="categorydao")
public void setCategorydao(Categorydao ps){
	this.categorydao = ps;
}

@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
public String listCategorys(Model model) {
	model.addAttribute("category", new Category());
	model.addAttribute("categoryList", this.categorydao.list());
	return "categorylist";
}


@RequestMapping(value="/categorylist/add", method = RequestMethod.POST)

public String addCategory(@ModelAttribute("category") Category category){
	categorydao.saveOrUpdate(category);
    return "redirect:/categorylist";

}

@RequestMapping("categorylist/remove/{id}")
public String removeCategory(@PathVariable("id") String id,ModelMap model) throws Exception{
	
   try {
	categorydao.delete(id);
	model.addAttribute("message","Successfully Added");
} catch (Exception e) {
	model.addAttribute("message",e.getMessage());
	e.printStackTrace();
}
   //redirectAttrs.addFlashAttribute(arg0, arg1)
    return "redirect:/categorylist";
}

@RequestMapping("categorylist/edit/{id}")
public String editCategory(@PathVariable("id") String id, Model model){
	System.out.println("editCategory");
    model.addAttribute("category", this.categorydao.get(id));
    model.addAttribute("listCategorys", this.categorydao.list());
    return "categorylist";

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

	

