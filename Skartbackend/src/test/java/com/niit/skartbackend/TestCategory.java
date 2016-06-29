package com.niit.skartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericApplicationContext;

import com.niit.skartbackend.dao.Categorydao;
import com.niit.skartbackend.model.Category;


public class TestCategory {

	static AnnotationConfigApplicationContext context;
	
	public static void main(String args[])

		{
		
		context = new AnnotationConfigApplicationContext();
		 
		context.scan("com.niit.skartbackend.config");
		
		context.refresh();

		Category cate =(Category) context.getBean("category");
		
		Categorydao categorydao = (Categorydao) context.getBean("categoryDao");
		
		cate.setId("TAB_003");
		cate.setName("Tablet");
		cate.setDescription("Tablet product");
		
		
		categorydao.saveOrUpdate(cate);
	
		
		List<Category> list = new ArrayList<Category>();
		list = categorydao.list();
		for (Category c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());
		
		
		}

	}

}
