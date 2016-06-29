package com.niit.skart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.servlet.ModelAndView;



import com.niit.skartbackend.dao.Supplierdao;
import com.niit.skartbackend.model.Supplier;

@Controller
	public class Suppliercontroller{
	
@Autowired
		private Supplierdao supplierdao;
/*
@RequestMapping("/addCategory")
public ModelAndView addCategory(@ModelAttribute Supplier supplier) {
	System.out.println("am in add Supplier");
	supplierdao.saveOrUpdate(supplier);
  return new ModelAndView("/inc");
 }*/
		
 @RequestMapping("/supplierlist")
		public ModelAndView getAllCategories() {

	 System.out.println("am in Supplier controller");
			
			List<Supplier> supplierlist =  supplierdao.list();
			System.out.println();			
			ModelAndView mv = new ModelAndView("/supplierlist");
			for(Supplier c :supplierlist)
			{
				System.out.println(c.getId());
			    System.out.println(c.getName()); 
			    System.out.println(c.getDescription());
			}
			mv.addObject("supplierlist", supplierlist);
		
			return mv;
			
			
		}
		
		
		
		
	}
