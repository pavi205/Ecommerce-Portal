package com.niit.skartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.skartbackend.dao.Feedbackdao;
import com.niit.skartbackend.model.Feedback;

public class Testfeedback {
	
	static AnnotationConfigApplicationContext context;

	public static void main(String[] args) {
		
System.out.println("TestFeedback");
		
		context = new AnnotationConfigApplicationContext();
		 
		context.scan("com.niit.skartbackend");
		
		context.refresh();

		
		Feedbackdao feedbackdao = (Feedbackdao) context.getBean("feedbackDao");
		Feedback feed=new Feedback();

		feed.setName("Sony");
	    feed.setEmail("abc@email.com");
		feed.setComments("comments");
		
	feedbackdao.save(feed);
		
		
		List<Feedback> list = new ArrayList<Feedback>();
		list = feedbackdao.list();
		for (Feedback c : list) {
			 
		   System.out.println(c.getName() + ":" + c.getEmail() + ":" + c.getComments());
		
		
		}

	}

}
