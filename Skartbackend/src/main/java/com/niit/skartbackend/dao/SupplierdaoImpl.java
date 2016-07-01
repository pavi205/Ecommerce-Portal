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

import com.niit.skartbackend.model.Supplier;

@Repository("supplierDao")
public class SupplierdaoImpl implements Supplierdao {

	@Autowired
	private SessionFactory sessionFactory;


		public SupplierdaoImpl(SessionFactory sessionFactory) {
		
			
			this.sessionFactory = sessionFactory;
		}

		@Transactional
		public List<Supplier> list() {
			 
			Session s=sessionFactory.getCurrentSession();
			Criteria c=s.createCriteria(Supplier.class);
			List<Supplier> l=new ArrayList<Supplier>();
			l=c.list();
			return l;
			
			/*@SuppressWarnings("unchecked")
			List<Category> listCategory = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return listCategory;*/
		}

		

		@Transactional
		public void saveOrUpdate(Supplier supplier) {
			
			System.out.println("am in save or update");
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		}

		@Transactional
		public void delete(String id) {
			Supplier SupplierToDelete = new Supplier();
			SupplierToDelete.setId(id);
			sessionFactory.getCurrentSession().delete(SupplierToDelete);
		}

		
	@Transactional
		public Supplier get(String id) {
			String hql = "from Supplier where id=" + id;
			Query query = sessionFactory.getCurrentSession().createQuery(hql);

			@SuppressWarnings("unchecked")
			List<Supplier> listSupplier = (List<Supplier>) query.list();

			if (listSupplier != null && !listSupplier.isEmpty()) {
				return listSupplier.get(0);
			}

			return null;
		}

	}

	
	

