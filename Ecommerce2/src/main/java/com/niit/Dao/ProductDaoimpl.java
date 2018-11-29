package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Product;

@Repository("productDao")
@Transactional
public class ProductDaoimpl implements ProductDao {
	@Autowired // Spring container auto wire bean of type SessionFactory
	private SessionFactory sessionFactory;

	public void ProductDaoImpl() {
		System.out.println("ProductDaoImpl bean is created");
	}

	public void addProduct(Product product) {// product is input
		// database operation -insert product details in product table
		System.out.println("Before inserting product " + product.getProductID());
		sessionFactory.getCurrentSession().saveOrUpdate(product);// permanently store the product object in database,
																	// session.sav
		System.out.println("After inserting product " + product.getProductID());

	}

	public void updateProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.update(product);// -> details will get updated in the table
	}

	public Product getProduct(int productID) {
		Session session = sessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class, productID);
		return product;
	}

	public void deleteProduct(int productID) {
		// TODO Auto-generated method stub
		Product product = (Product) sessionFactory.getCurrentSession().load(Product.class, productID);
		if (null != product) {
			this.sessionFactory.getCurrentSession().delete(product);
		}
	}
		

	public List<Product> getAllProduct() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");// HQL ,Product is java class name/entity name
		List<Product> products = query.list();
		return products;
		// hibernate will get converted into SQL query
		// and fetch all the records
		// and convert it into list of products
	}

}
