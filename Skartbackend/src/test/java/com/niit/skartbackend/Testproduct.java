package com.niit.skartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericApplicationContext;

import com.niit.skartbackend.dao.Productdao;
import com.niit.skartbackend.model.Product;


public class Testproduct {

	static AnnotationConfigApplicationContext context;
	
	public static void main(String args[])

		{
		
		context = new AnnotationConfigApplicationContext();
		 
		context.scan("com.niit.skartbackend.config");
		
		context.refresh();

		Product pro =(Product) context.getBean("product");
		
		Productdao productdao = (Productdao) context.getBean("productDao");
		
		pro.setId("TAB_003");
		pro.setName("Tablet");
	
		
		
		productdao.saveOrUpdate(pro);
	
		
		List<Product> list = new ArrayList<Product>();
		list = productdao.list();
		for (Product c : list) {
			System.out.println(c.getId() + ":" + c.getName() );
		
		
		}

	}

}
