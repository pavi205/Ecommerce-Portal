package com.niit.skart.dao;

import org.springframework.stereotype.Repository;

@Repository
public class Userdao {
	
	public boolean isValid(String name, String password)
	{
		
		System.out.println("am in userdao");
		
		if(name.equals("pavi") && password.equals("pavi"))
		{
			return true;
		}
		else
		{
			return false;
		}
	
	}

	

}
