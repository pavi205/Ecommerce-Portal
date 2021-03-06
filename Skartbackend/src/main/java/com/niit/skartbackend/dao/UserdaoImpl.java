package com.niit.skartbackend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.skartbackend.model.User;


@Repository("userDao")
public class UserdaoImpl implements Userdao{

	@Autowired
	private SessionFactory sessionFactory;

	public UserdaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<User> list() {
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}
	
	
	@Transactional
	public void delete(String email) {
		User user = new User();
		user.setEmail(email);
		sessionFactory.getCurrentSession().delete(user);
	}

	@Transactional
	public User get(String email) {
		String hql = "from User where email=" + "'"+ email+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public boolean isValid(String email, String password, boolean isAdmin) {
		//String hql = "from User where id= '" + id + "' and " + " password ='" + password +"' and " + " isAdmin ='" +isAdmin;
		//String hql = "from User where id='" + id + "' and " + " passsword ='" + password ;
		//String hql = "from User where id= '" + id + "' and " + " password ='" + password+"'";
		String hql = "from User where email= '" + email + "' and " + " password ='" + password+"'";
		System.out.println(email);
		System.out.println(password);
		System.out.println(isAdmin);
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}

}
