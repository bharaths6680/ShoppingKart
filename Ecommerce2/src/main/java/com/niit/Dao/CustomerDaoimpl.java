package com.niit.Dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Customer;

@Repository("customerDao")
@Transactional
public class CustomerDaoimpl implements CustomerDao {
 
    @Autowired
    private SessionFactory sessionFactory;
 
   
    public void deleteCustomer(int id) {
        Customer customer = (Customer) sessionFactory.getCurrentSession().load(
                Customer.class,id);
        if (null != customer) {
            this.sessionFactory.getCurrentSession().delete(customer);
        }
 
    }
 
    
   
    public List<Customer> getAllCustomer() {
 
        return sessionFactory.getCurrentSession().createQuery("from Customer").list();
    }

    public void addCustomer(Customer customer) {
        sessionFactory.getCurrentSession().save(customer);
 
    }
 
    public Customer getCustomer(int id) {
    	 return (Customer) sessionFactory.getCurrentSession().get(Customer.class, id);
    }

	public Customer updateCustomer(Customer customer) {
		sessionFactory.getCurrentSession().update(customer);
        return customer;
	}

	


}
