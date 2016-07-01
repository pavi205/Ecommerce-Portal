package com.niit.skartbackend;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.niit.skartbackend.dao.Supplierdao;
import com.niit.skartbackend.model.Supplier;

public class Testsupplier {
	
static AnnotationConfigApplicationContext context;
	
	public static void main(String args[])

		{
		
		context = new AnnotationConfigApplicationContext();
		 
		context.scan("com.niit.skartbackend.config");
		
		context.refresh();

		Supplier supp =(Supplier) context.getBean("supplier");
		
		Supplierdao supplierdao = (Supplierdao) context.getBean("supplierDao");
		
		supp.setId("TAB_003");
		supp.setName("Tablet");
		supp.setDescription("Tablet product");
		
		
		supplierdao.saveOrUpdate(supp);
	
		
		List<Supplier> list = new ArrayList<Supplier>();
		list = supplierdao.list();
		for (Supplier c : list) {
			System.out.println(c.getId() + ":" + c.getName() + ":" + c.getDescription());
		
		
		}

	}
	

}
