package com.niit.skartbackend.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.skartbackend.model.Feedback;

@Repository("feedbackDao")
public class FeedbackdaoImpl implements Feedbackdao{
	
@Autowired

   private SessionFactory sessionFactory;

public FeedbackdaoImpl(SessionFactory sessionFactory){
	
	this.sessionFactory=sessionFactory;
	
}

@SuppressWarnings("unchecked")
@Transactional
public List<Feedback> list(){
	Session s=sessionFactory.getCurrentSession();
	Criteria c=s.createCriteria(Feedback.class);
	List<Feedback> l=new ArrayList<Feedback>();
	l=c.list();
	return l;
	}

@Transactional
public void save(Feedback feedback){
	System.out.println("FEEDBACK SAVE METHOD");
	sessionFactory.getCurrentSession().save(feedback);
}

}
