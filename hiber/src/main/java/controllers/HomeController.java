package controllers;

import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.google.gson.Gson;

import dao.cartListServices;
import dao.productServices;
import model.Product;
import model.cartList;


@EnableWebMvc
@Controller
public class HomeController {
	
	@Autowired private JavaMailSender mailSender;
	
	@Autowired
	  public productServices productService;
	
	@Autowired
	  public cartListServices cartListService;
	
	@Qualifier(value="productService")
    public void setPersonService(productServices ps){
        this.productService = ps;
    }
	
	@RequestMapping("/")
    public String showIndex()
    {
    	return "index";
    }
	@RequestMapping("/sent")
    public String showsent()
    {
    	return "sent";
    }
	
	/*@RequestMapping("/AddToCart")
    public String showcart()
    {
    	return "cart";
    }*/
	
	@RequestMapping("/about")
    public String showaboutt()
    {
    	return "about";
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
    
    @RequestMapping("/send")
    public String showsend()
    {
    	return "send";
    }
    
    
   /* @RequestMapping("/FileUploadSuccess")
    public String showFileUploadSuccess()
    {
    	return "FileUploadSuccess";
    } 
     */  
    
    //FOR ADD 
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

   @RequestMapping(value = "/AddToCart", method =RequestMethod.GET)
    public String addproduct(@ModelAttribute("cart") cartList c)
    {
	   Product p=this.productService.getProductById(c.pid);
	   System.out.println("\n\n\ncart product  name "+c.pname+"\n\n");
	   System.out.println("\n\n\noriginal quantity in stock "+p.quantity+"\n\n");
		    
	   p.quantity-=c.quantity;
	   
	   this.productService.updateProduct(p);
	   System.out.println("\n\n\nupdated quantity in stock"+p.quantity+"\n\n");
	   cartListService.addProduct(c);
    	return "redirect:/show";   
    }
   
  
   
    /*@RequestMapping(value = "/AddToCart", method =RequestMethod.GET)
    public String addproduct(@RequestParam("name") String pname,Model m)
    {
    	//cartListService.addProduct(c);
    
	  
	   m.addAttribute("cart", pname);
    	return "contact";   
    }
   */
   /* @RequestMapping("/desp")
    public String showProductDescription()
    {
    	return "productdescription";
    }*/
    
    @RequestMapping(value = "/product", method=RequestMethod.GET )
    public String listProducts(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("listProduct", this.productService.listProduct());
        return "product";
    }
    
    @RequestMapping(value = "/show" )
   	//@ResponseBody
   	public ModelAndView showcartList()
   	{
   		List<cartList> clist=new ArrayList<cartList>();
   		clist=cartListService.listProduct();
   		String json = new Gson().toJson(clist);  // converting list into Google Gson object which is a string
   		System.out.println(json);
   		
   		ModelAndView mv=new ModelAndView("cart");
   		mv.addObject("myJson", json);
   		return mv;
   	}
     
    
    @RequestMapping("/delete/{id}")
    public String removeProduct(@PathVariable("id") int id)
    {
    	this.productService.removeProduct(id);
    	return "redirect:/product";
    }
    
    @RequestMapping("/remove/{pid}")
    public String removecartList(@PathVariable(value="pid") int pid)
    {
    	 System.out.println("\n\n\ninside remove");
   	  
    	this.cartListService.removecartList(pid);
    	return "redirect:/show";
    }
    
    
    /*@RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id,Model model)
    {
    	model.addAttribute("product",this.productService.getProductById(id));
    	model.addAttribute("listProduct",this.productService.listProduct());
    	
    	return "redirect:/addproduct";
    }
    */
    
    @RequestMapping(value="/contact")
	public String showcontact()

	{
		return "contact";

	}

 
    @RequestMapping(value = "/saveDetail", method = RequestMethod.POST)
    public String update(@ModelAttribute Product contact) {
    	this.productService.updateProduct(contact);
        return "redirect:/product";
    }

    @RequestMapping(value= "/edit", method = RequestMethod.GET)
    public ModelAndView updateProduct1(HttpServletRequest request)
    {
 	int contactId = Integer.parseInt(request.getParameter("id"));
        Product contact = productService.getProductById(contactId);
        ModelAndView model = new ModelAndView("edit");
        model.addObject("contact", contact);
    
        
    	return model;
    }
	
    @RequestMapping(value= "/productdescription", method = RequestMethod.GET)
    public ModelAndView description(HttpServletRequest request)
    {
 	int contactId = Integer.parseInt(request.getParameter("id"));
 	/*Set<Product> sp=new LinkedHashSet<Product>();
    */Product contact = productService.getProductById(contactId);
        ModelAndView model = new ModelAndView("productdescription");
       /* sp.add(contact);
        
        s.setAttribute("setPro", sp);
       */   
        model.addObject("desp", contact);
        
    	return model;
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
   
    
   /* @RequestMapping(value = "/show" )
	//@ResponseBody
	public ModelAndView showcartList()
	{
		List<cartList> clist=new ArrayList<cartList>();
		clist=cartListService.listProduct();
		String json = new Gson().toJson(clist);  // converting list into Google Gson object which is a string
		System.out.println(json);
		
		ModelAndView mv=new ModelAndView("cart");
		mv.addObject("myJson", json);
		return mv;
	}
  */
    
    
    @RequestMapping(value="/sendEmail", method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request) {
        // takes input from e-mail form
        String recipientAddress = request.getParameter("email");
        String fname=request.getParameter("first_name");
        String subject ="Your Friend Recommends..."+ request.getParameter("ninja alert");
        String message = request.getParameter("comments");
        String finalmessage="Hi "+fname+", "+" "+message+"!!! "+"Check this out!!!";
         
        // prints debug info
        System.out.println("To: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + finalmessage);
         
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(finalmessage);
         
        // sends the e-mail
        mailSender.send(email);
         
        // forwards to the view named "Result"
        return "redirect:/sent";
    }
    
}
