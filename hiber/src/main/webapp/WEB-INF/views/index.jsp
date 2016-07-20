<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
	 <li><a href="addproduct"> Add Product</a></li> 
	  <li><a href="register"> Register</a></li>
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

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="C:\Users\suraj\Desktop\try\backup\day4\ninja\src\main\resources\g1.jpeg" height=300 width=500 alt="pen drive">
    </div>

    <div class="item">
      <img src="C:\Users\suraj\Desktop\try\backup\day4\ninja\src\main\resources\g4.jpg" height=300 width=500 alt="earphone">    </div>

    <div class="item">
      <img src="C:\Users\suraj\Desktop\try\backup\day4\ninja\src\main\resources\g3.jpg" height=300 width=500 alt="digicam">
    </div>

    <div class="item">
      <img src="C:\Users\suraj\Desktop\try\backup\day4\ninja\src\main\resources\g4.jpg" height=300 width=500 alt="earphone">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
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

