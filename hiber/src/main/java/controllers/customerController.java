package controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.customerServices;
import model.Product;
import model.customer;

@Controller
@RequestMapping(value= "/customerreg")
public class customerController {
	
	@Autowired
	  public customerServices customerService;
	
	@Qualifier(value="customerService")
  public void setPersonService(customerServices cs){
      this.customerService = cs;
  } 
	
	 @RequestMapping(value = "/login", method =RequestMethod.GET)
	    public String addCustomer(@Valid @ModelAttribute("customerreg")  customer c,BindingResult result)
	    {
	    	
		 if(result.hasErrors())
		 {
			 return "/Register";
		 }
		 else{
			 
				 if(c.getCid()==0){
			    		this.customerService.addCustomer(c);
			    	
			    	}
			    	else{
			    		this.customerService.updateCustomer(c);
			    	}
			    return "login";
	    	}
	    	
	    }

	@RequestMapping(method = RequestMethod.GET)
	public String displayCustomerForm(ModelMap model) {

		model.addAttribute("customerreg", new customer());
		return "register";

	}



}
