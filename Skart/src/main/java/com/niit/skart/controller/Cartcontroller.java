package com.niit.skart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.skartbackend.model.Cartdetails;

@Controller
public class Cartcontroller {

	@ModelAttribute("cartdetails")
	public Cartdetails getObject()
	{
		
		return new Cartdetails() ;
	}
	
	@RequestMapping("/cart")
	public String checkout(){
		
		return "redirect:/cart?cart";
		
	}

	
	
}
