package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.Product;
import model.customer;

@Service
public class customerServices {

	@Autowired
    private customerDAOImpl customerDAO;
 
    public void setPersonDAO(customerDAOImpl customerDAO) {
        this.customerDAO = customerDAO;
    }
 
   
    @Transactional
    public void addCustomer(customer c) {
        this.customerDAO.addCustomer(c);
    }
 
    @Transactional
    public void updateCustomer(customer c) {
        this.customerDAO.updateCustomer(c);
    }




}
