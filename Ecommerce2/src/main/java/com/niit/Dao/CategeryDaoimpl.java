package com.niit.Dao;

	 
	import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Categery;
	 
	@Repository("categeryDao")
	@Transactional
	public class CategeryDaoimpl implements CategeryDao {
		@Autowired
		private SessionFactory sessionFactory;
	    public void deleteCategery(int id) {
	        Categery categery = (Categery) sessionFactory.getCurrentSession().load(
	                Categery.class,id);
	        if (null != categery) {
	            this.sessionFactory.getCurrentSession().delete(categery);
	        }
	 
	 }
	 
	    public List<Categery> getAllCategery() {
	 
	        return sessionFactory.getCurrentSession().createQuery("from Categery").list();
	    }


		public void addCategery(Categery categery) {
			sessionFactory.getCurrentSession().saveOrUpdate(categery);
			 
	    }
		public Categery getCategery(int id) {
			 return (Categery) sessionFactory.getCurrentSession().get(Categery.class, id);
	    }
		
	

		public Categery updateCategery(Categery categery) {
			sessionFactory.getCurrentSession().update(categery);
	        return categery;
		}

		

}

