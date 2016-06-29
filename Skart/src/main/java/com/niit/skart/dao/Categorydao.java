package com.niit.skart.dao;

import java.util.List;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.niit.skart.bean.Category;



@Repository
public class Categorydao {
	
	public List<Category> getAllCategories() {

		System.out.println("am in category dao");
		
		List<Category> list = new ArrayList<Category>();
		Category c1 = new Category();
		c1.setId("MOB_SAM");
		c1.setName("Samsung");
		c1.setDescription("Samsung Galaxy J series");

		list.add(c1);

		c1 = new Category();
		c1.setId("MOB_iphone");
		c1.setName("Iphone");
		c1.setDescription("iphone 6s");

		list.add(c1);

		c1 = new Category();
		c1.setId("MOB_MICRO");
		c1.setName("MICROMAX");
		c1.setDescription("Micromax Canvas");

		list.add(c1);

		return list;

	}

	
	
	
	
	
	

}
