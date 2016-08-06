package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Product;
import model.cartList;

@Repository
public class cartListDAOImpl {

	 private static final Logger logger = LoggerFactory.getLogger(cartListDAOImpl.class);
	
	 @Autowired
	 private SessionFactory sessionFactory;
	   
	 public void setSessionFactory(SessionFactory sf){
	        this.sessionFactory = sf;
	    }

	 public void addProduct(cartList c)
	    {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.save(c);
	        logger.info("Product added to cart, Product Details="+c);
	    }
	 
	 public void updateProduct(cartList c) {
	        Session session = this.sessionFactory.getCurrentSession();
	        session.update(c);
	        logger.info("Product updated successfully in cart, ="+c);
	    }
	 @SuppressWarnings("unchecked")
	   
	 public List<cartList> listproduct() {
	        Session session = this.sessionFactory.getCurrentSession();
	        List<cartList> cL = session.createQuery("from cartList").list();
	        for(cartList c : cL)
	        {
	            logger.info("Product List::"+c);
	        }
	        return cL;
	    }
	 

	public void removecartProduct(int pid) {
		 Session session = this.sessionFactory.getCurrentSession();
		 cartList c = (cartList) session.load(cartList.class, new Integer(pid));
	        if(null != c){
	            session.delete(c);
	        }
	        logger.info("Product removed from cart successfully, ="+c);
	 
	}

	public cartList getProductById(int pid) {
		 Session session = this.sessionFactory.getCurrentSession();      
		 cartList c = (cartList) session.load(cartList.class, new Integer(pid));
	        logger.info("Product loaded successfully, Person details="+c);
	        return c;
	}
}
