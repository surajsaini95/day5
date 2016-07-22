package dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Product;
import model.customer;

@Repository
public class customerDAOImpl {
	
	private static final Logger logger = LoggerFactory.getLogger(productDAOImpl.class);
	 
    @Autowired
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

    public void addCustomer(customer c)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(c);
        logger.info("Product saved successfully, Product Details="+c);
    }
 
    public void updateCustomer(customer c) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(c);
        logger.info("Product updated successfully, Product Details="+c);
    }

	
    
}
