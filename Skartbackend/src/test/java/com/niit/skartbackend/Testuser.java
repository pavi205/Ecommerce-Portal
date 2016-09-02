package com.niit.skartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.skartbackend.dao.Userdao;
import com.niit.skartbackend.model.User;

public class Testuser {
	
	static AnnotationConfigApplicationContext context;
	
	public static void main(String[] args) {

			context = new AnnotationConfigApplicationContext();
			context.scan("com.niit.skartbackend");
			context.refresh();
			
			System.out.println("test user");
			Userdao userdao = (Userdao) context.getBean("userDao");
				
			//User user= new User();
			
		/*	user.setId("admin");
			user.setPassword("admin");
			user.setAdmin(true);
			
			userdao.saveOrUpdate(user);
			
			user.setId("pavi");
			user.setPassword("pavi");
			user.setAdmin(false);
			
			userdao.saveOrUpdate(user);*/
			
		List<User> list = new ArrayList<User>();
		list = userdao.list();
		for (User c : list) {
			System.out.println(c.getEmail() + ":" + c.getPassword());
		}
		
			
					}
	}
	


