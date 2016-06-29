package com.niit.skartbackend.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.skartbackend.model.Category;

@Repository("categoryDao")
public class CategorydaoImpl implements Categorydao {

	@Autowired
	private SessionFactory sessionFactory;

	public CategorydaoImpl(SessionFactory sessionFactory) {
	
		
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Category> list() {
		 
		Session s=sessionFactory.getCurrentSession();
		Criteria c=s.createCriteria(Category.class);
		List<Category> l=new ArrayList<Category>();
		l=c.list();
		return l;
		
		/*@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;*/
	}

	

	@Transactional
	public void saveOrUpdate(Category category) {
		
		System.out.println("am in save or update");
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@Transactional
	public void delete(String id) {
		Category CategoryToDelete = new Category();
		CategoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(CategoryToDelete);
	}

	
@Transactional
	public Category get(String id) {
		String hql = "from Category where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();

		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}

		return null;
	}

}
