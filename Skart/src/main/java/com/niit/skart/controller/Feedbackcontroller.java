package com.niit.skart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.skartbackend.dao.Feedbackdao;
import com.niit.skartbackend.model.Feedback;

@Controller
public class Feedbackcontroller {

	@Autowired
	private Feedbackdao feedbackdao;
@Qualifier(value="feedbackdao")
public void setFeedbackdao(Feedbackdao ps){
this.feedbackdao = ps;
}

@RequestMapping(value = "/contactus", method = RequestMethod.GET)
public String listfeedback(Model model) {
System.out.println("am in feedback list method");
model.addAttribute("feedback", new Feedback());
model.addAttribute("feedbackList", this.feedbackdao.list());
return "contactus";
}

@RequestMapping("/addFeedback")
public ModelAndView addFeedback(@ModelAttribute Feedback feedback) {
System.out.println("add feedback method");
feedbackdao.save(feedback);
/*List<Feedback> feedbackList = feedbackdao.list();
ModelAndView mv = new ModelAndView("/contactus");
mv.addObject("feedbackList", feedbackList);*/
return new ModelAndView("/contactus");
}

	
}
