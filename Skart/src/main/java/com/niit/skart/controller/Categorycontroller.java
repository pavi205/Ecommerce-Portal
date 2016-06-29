package com.niit.skart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.servlet.ModelAndView;


import com.niit.skartbackend.model.Category;

import com.niit.skartbackend.dao.Categorydao;

@Controller
	public class Categorycontroller{
	
@Autowired
		private Categorydao categorydao;

@RequestMapping("/addCategory")
public ModelAndView addCategory(@ModelAttribute Category category) {
	System.out.println("am in add Category");
	categorydao.saveOrUpdate(category);
  return new ModelAndView("/addCategory");
 }

/*@RequestMapping("/delete")
public ModelAndView delete(@ModelAttribute Category category) {
	System.out.println("am in delete Category");
	categorydao.saveOrUpdate(category);
  return new ModelAndView("/delete");
 }*/
		
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
		
		
		
		
	}

	

