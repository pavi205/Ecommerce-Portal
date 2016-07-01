package com.niit.skartbackend.dao;

import java.util.List;

import com.niit.skartbackend.model.Product;

public interface Productdao {
	
public List<Product> list();
	
	public void delete(String id);
	
	public Product get(String id);
	
	public void saveOrUpdate(Product product);


}
