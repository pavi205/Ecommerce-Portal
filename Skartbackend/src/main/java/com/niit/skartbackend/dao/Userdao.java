package com.niit.skartbackend.dao;

import java.util.List;

import com.niit.skartbackend.model.User;


public interface Userdao {
	
	public List<User> list();

    public User get(String email);

	public void saveOrUpdate(User user);
	
	//public void saveOrUpdate(User user);

	public void delete(String email);
	
	public boolean isValid(String email, String name, boolean isAdmin);

}
