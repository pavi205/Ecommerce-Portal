package com.niit.skartbackend.dao;

import java.util.List;

import com.niit.skartbackend.model.Feedback;

public interface Feedbackdao {
	
	public List<Feedback> list();
	
	public void save(Feedback feedback);

}
