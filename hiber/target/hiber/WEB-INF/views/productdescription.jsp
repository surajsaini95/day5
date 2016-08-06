<!DOCTYPE html>
<html lang="en">

<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
  
<style>
@import url('http://weloveiconfonts.com/api/?family=entypo');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: #ddd;
}

.wrapper {
  padding: 120px 0 0;
  text-align: center;
}

.social {
  display: inline-block;
  width: 50px;
  height: 50px;
  margin: 0 10px;
  line-height: 50px;
  font-family: Entypo;
  font-size: 28px;
  text-align: center;
  color: #555;
  border-radius: 10px;
  background: #eee;
  overflow: hidden;
  cursor: pointer;
}
</style>
<body bgcolor=lightgrey>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
 <a href="#"><img src="${pageContext.servletContext.contextPath}/resources/logo.png"  alt="ninja" width="150" height="100"/>
    </a>
	<h2 style="color:yellow; ">NINJA GADGETS</h2>
    </div>
    <h3>
    <ul class="nav navbar-nav navbar-right">
       <li><a href="index"> Home</a></li> 
	 <li><a href="productTable"> Product</a></li> 
	  <li><a href="customerreg"> Register</a></li>
	  <li><a href="send"> Promote</a></li>
	   <div class="btn-group">
	   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Sign In
	   <span class="caret"></span>
	   </button>
	   <ul class="dropdown-menu" role="menu">
	   <li><a href="login">Admin</a></li>
	   <li><a href="login">Customer</a></li>
	   </ul>
	   </div>
    
    </ul></h3>
  </div>
</nav>



 <form:form action="" method="post" modelAttribute="desp">
        <table>
            
            <tr>
                <td>Name:</td>	
                <td>${desp.name}</td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>${desp.category}</td>
            </tr>
            <tr>
                <td>price:</td>
                <td>${desp.price}</td>
            </tr>
          
            </table>
        </form:form>
 

<h2><a href="AddToCart">Add to cart </a> </h2>


<nav class="navbar navbar-inverse navbar-fixed-bottom ">
  <div class="container-fluid">

      <ul class="nav navbar-nav">
      <li class="active"><a href="about"> About Us</a></li> 
	  <li class="active"><a href="contact"> Contact Us</a></li>
      
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      
  <li><a onclick="" class="btn btn-social-icon btn-lg btn-facebook"><i class="fa fa-facebook"></i></a></li>
       
  <li><a onclick="" class="btn btn-social-icon btn-lg btn-twitter"><i class="fa fa-twitter"></i></a></li>
  <li> <a onclick="" class="btn btn-social-icon btn-lg btn-flickr"><i class="fa fa-flickr"></i></a></li>
   <li>     <a onclick="" class="btn btn-social-icon btn-lg btn-pinterest"><i class="fa fa-pinterest"></i></a></li>
   
 </ul>
  </div>
</nav>


</body>
</html>