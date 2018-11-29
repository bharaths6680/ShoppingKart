package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.models.Customer;
@Repository("customerDao")
public interface CustomerDao {
	public void addCustomer(Customer customer);
 	public List<Customer> getAllCustomer();
 	public void deleteCustomer(int id);
 	public Customer updateCustomer(Customer customer);
 	public Customer getCustomer(int id);
}
