
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Promote</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
@import url('http://weloveiconfonts.com/api/?family=entypo');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
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

.get-in-touch {
position: relative;
margin: 0 auto;
padding: 30px;
border-radius: 2px;
background: rgb(255, 255, 255) url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAGCAYAAACFIR03AAAAV0lEQVR42tXOMRWAQAwE0RWFDRTg5d47Jeg4Q9gI06RbqlwKil/P6LpXbDCf85AxEBtMGjKG/jyPUHUerfP4nEeoOo/Wedj5pOo8Wudh55Oq82idh51PLxpvled7kLAXAAAAAElFTkSuQmCC) repeat-x;
box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

.get-in-touch input[type=text],.get-in-touch input[type=email],.get-in-touch input[type=password], .get-in-touch textarea {
background: rgb(235, 241, 245);
color: rgb(36, 39, 41);
}
.get-in-touch  input:focus, .get-in-touch  textarea:focus {
outline: 0;
background: #FFF;
}
</style>
</head>
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
	  <li><a href="register"> Register</a></li>
	    <li><a href="send"> Promote</a></li>
	 <div class="btn-group">
	   <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Sign In
	   <span class="caret"></span>
	   </button>
	   <ul class="dropdown-menu" role="menu">
	   <li><a href="#">Admin</a></li>
	   <li><a href="#">Customer</a></li>
	   </ul>
	   </div>
    
    </ul></h3>
  </div>
</nav>
<!-- ==== Starting modal ==== -->
	
	        <h1 class="modal-title">Recommend a Friend</h1>
         <div class="modal-body">
         <form class="form-vertical" name="commentform" method="post" action="sendEmail">
    <div class="form-group">
        <label class="control-label col-md-4" for="first_name">First Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="last_name">Last Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="email">Email Address</label>
        <div class="col-md-6 input-group">
        <span class="input-group-addon">@</span>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="comment">Write your Message here</label>
        <div class="col-md-6">
            <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your suggestion or comment here">Hi, ${param.name} is available at ${param.price}</textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-6">
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Send</button>
        </div>
    </div>
    
 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
</form>
        </div><!-- End of Modal body -->
        
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