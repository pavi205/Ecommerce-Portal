package com.niit.skart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.skart.dao.Userdao;


@Controller
public class Usercontroller {
	
	
	
	@Autowired
		Userdao userdao;
	
	@RequestMapping("/")
	public String gotoindex() {
		return "index";    
	}
	
		@RequestMapping("/isValid")
		
	public ModelAndView show(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
			
			System.out.println("am in user controller");
			
			String message;	
			ModelAndView mv;
				
		if (userdao.isValid(name, password)) {
			message="Valid User";
			mv= new ModelAndView("home"); 
			
		} else {
			
			message="Invalid User";
			mv=new ModelAndView("index");
		}
		
        mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	
			
		}

	@RequestMapping("/home")
	public String gotohome() {
		return "home";    
	}

	
	@RequestMapping("/contactus")
	public String gotocontactus() {
		return "contactus";    
	}
	
	@RequestMapping("/brand")
	public String gotobrand() {
		return "brand";    
	}
	
	@RequestMapping("/mobiles")
	public String gotomobiles() {
		return "mobiles";    
	}
	
	@RequestMapping("/signup")
	public String gotosignup() {
		return "signup";    
	}
	
	@RequestMapping("/login")
	public String gotologin() {
		return "login";    
	}

	@RequestMapping("/product")
	public String gotoproduct() {
		return "product";
	
	}
	
	@RequestMapping("/inc")
	public String gotoinc() {
		return "inc";
	
	}
	
	@RequestMapping("/adminhome")
	public String gotoadminhome() {
		return "adminhome";
	
	}
	
	@RequestMapping("/discount")
	public String gotodiscount() {
		return "discount";
	
	}
	
}
