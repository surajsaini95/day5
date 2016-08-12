package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Product;
import model.cartList;

@Service
public class cartListServices {

	@Autowired
    private cartListDAOImpl cartListDAO;
 
	 @Transactional
	    public void addProduct(cartList c) {
	        this.cartListDAO.addProduct(c);
	    }
	 
	 @Transactional
	    public void updateProduct(cartList c) {
	        this.cartListDAO.updateProduct(c);
	    }
	 
	 @Transactional
	    public List<cartList> listProduct() {
	        return this.cartListDAO.listproduct();
	    }
	    
	   
	    @Transactional
	    public cartList getProductById(int pid) {
	        return this.cartListDAO.getProductById(pid);
	    }
	    @Transactional
	    public void removecartList(int pid) 
	    {
	        this.cartListDAO.removecartList(pid);
	    }
	    
	   /* @Transactional
	    public void removeAllCartItems(cartList cart) {
	        List<cartList> cartItems = cart.getCartItems();
              for (cartList item : cartItems) {
	            removecartList(item);
	        }
	    }*/
}
