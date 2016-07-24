package controllers;

import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.google.gson.Gson;

import dao.productServices;
import model.Product;


@EnableWebMvc
@Controller
public class HomeController {
	
	@Autowired
	  public productServices productService;
	
	@Qualifier(value="productService")
    public void setPersonService(productServices ps){
        this.productService = ps;
    }
	
	@RequestMapping("/")
    public String showIndex()
    {
    	return "index";
    }
    
    @RequestMapping("/index")
    public String showhome()
    {
    	return "index";
    }
    
    @RequestMapping("/addproduct")
    public String showaddproduct()
    {
    	return "addproduct";
    }
    
   
    @RequestMapping("/register")
    public String showregister()
    {
    	return "register";
    } 
    
    @RequestMapping("/login")
    public String showlogin()
    {
    	return "login";
    } 
    
    @RequestMapping("/Done")
    public String showDone()
    {
    	return "Done";
    }
    
    
    @RequestMapping("/FileUploadSuccess")
    public String showFileUploadSuccess()
    {
    	return "FileUploadSuccess";
    } 
    
    
    
    //FOR ADD AND UPDATE BOTH
    @RequestMapping(value = "/addproduct", method =RequestMethod.GET)
    public String addproduct(@ModelAttribute("product") Product p)
    {
    	if(p.getId()==0){
    		this.productService.addProduct(p);
    	}
    	else{
    		this.productService.updateProduct(p);
    	}
    	return "addproduct";   
    }

    @RequestMapping("/productdescription")
    public String showProductDescription()
    {
    	return "productdescription";
    }
    
    @RequestMapping(value = "/product", method=RequestMethod.GET )
    public String listProducts(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.listProduct());
        return "product";
    }
    
    
    @RequestMapping("/delete/{id}")
    public String removeProduct(@PathVariable("id") int id)
    {
    	this.productService.removeProduct(id);
    	return "redirect:/product";
    }
    
    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id,Model model)
    {
    	model.addAttribute("product",this.productService.getProductById(id));
    	model.addAttribute("listProduct",this.productService.listProduct());
    	
    	return "redirect:/addproduct";
    }
    
 
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "login";
    }
 
    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "denied";
    }
 
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
        return "logout";
    } 
 
    
    @RequestMapping(value = "/productTable" )
	//@ResponseBody
	public ModelAndView showproductTable()
	{
		List<Product> listtojsp=new ArrayList<Product>();
		listtojsp=productService.listProduct();
		String json = new Gson().toJson(listtojsp);  // converting list into Google Gson object which is a string
		System.out.println(json);
		ModelAndView mv=new ModelAndView("productTable");
		mv.addObject("myJson", json);
		return mv;
	}
    
    
}
