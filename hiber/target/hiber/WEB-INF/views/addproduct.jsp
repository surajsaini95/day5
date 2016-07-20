<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>add product</title>
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
 <a href="#"><img src="" alt="" width="250" height="150">
    </a>
	
    </div>
    <h3>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="index"> Home</a></li> 
	  <li><a href="product"> Product</a></li> 
	  <li><a href="#"> Sign In</a></li>
      <li><a href="register"> Register</a></li>
    </ul></h3>
  </div>
</nav>

 <br>
     <c:url var="addAction" value="/productTable/add" ></c:url>
 
<form:form action="${addAction}" modelAttribute="product">
<table>
    <c:if test="${!empty product.name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <!-- <form:hidden path="id" /> -->
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
    </tr>
    <tr>
    
     <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
    </tr>
    <tr>
    <br>
 
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
            </c:if>
        </td>
    </tr>
</table>  
</form:form>



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

