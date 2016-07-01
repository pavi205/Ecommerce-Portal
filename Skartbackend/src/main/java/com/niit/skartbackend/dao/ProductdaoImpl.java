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
import com.niit.skartbackend.model.Product;

@Repository("productDao")
public class ProductdaoImpl implements Productdao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public ProductdaoImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		 
		Session s=sessionFactory.getCurrentSession();
		Criteria c=s.createCriteria(Product.class);
		List<Product> l=new ArrayList<Product>();
		l=c.list();
		return l;
		
		/*@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;*/
	}

	

	@Transactional
	public void saveOrUpdate(Product product) {
		
		System.out.println("am in save or update");
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Transactional
	public void delete(String id) {
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}

	
@Transactional
	public Product get(String id) {
		String hql = "from Category where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();

		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}

		return null;
	}


}
