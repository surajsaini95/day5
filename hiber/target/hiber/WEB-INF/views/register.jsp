<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>register</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
@import url('http://weloveiconfonts.com/api/?family=entypo');

body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
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
</style></head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
 <a href="#"><img src="C:\Users\suraj\Desktop\try\backup\day4\ninja\src\main\resources\n1.png" alt="ninja" width="250" height="150">
    </a>
	
    </div>
    <h3>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="index"> Home</a></li> 
	  <li><a href="product"> Product</a></li> 
	  <li><a href="addproduct">Add Product</a></li> 
	  <li><a href="#"> Sign In</a></li>
      <li><a href="register"> Register</a></li>
    </ul></h3>
  </div>
</nav>


<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Join BABA </h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="First Name">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name">
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>


 <div class="text-center">
        <a onclick="" class="btn btn-social-icon btn-lg btn-facebook"><i class="fa fa-facebook"></i></a>
        <a onclick="" class="btn btn-social-icon btn-lg btn-dropbox"><i class="fa fa-dropbox"></i></a>
        <a onclick="" class="btn btn-social-icon btn-lg btn-flickr"><i class="fa fa-flickr"></i></a>
        <a onclick="" class="btn btn-social-icon btn-lg btn-pinterest"><i class="fa fa-pinterest"></i></a>
    </div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
      <h3>
      <ul class="nav navbar-nav navbar-left">
      <li><a href="#"> About Us</a></li> 
	  <li><a href="#"> Contact Us</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <div class="wrapper">
  <div float=right class="social">&#62220;</div>
  <div float=right class="social">&#62217;</div>
  <div float=right class="social">&#62223;</div>
  
</div>  </ul></h3>
  </div>
</nav>

</body>
</html>

