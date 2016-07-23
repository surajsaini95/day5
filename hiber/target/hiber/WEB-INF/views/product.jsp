<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head><meta http-equiv="Content-Type" content="text/html; charset-ISO-8859-1">
  <title>Product</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

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
	  <li><a href="addproduct"> AddProduct</a></li> 
	  </ul></h3>
  </div>
</nav>


<div class="table-responsive">
<table id="myTable" class="display table" width="100%" >

<thead>  
          <tr>  
            <th>PId</th>  
            <th>ProductName</th>  
            <th>Category</th>  
            <th>Price</th> 
            <th>Update</th> 
            <th>Delete</th> 
            <th>Details</th> 
            
             
          </tr>  
        </thead>  
        <tbody>  
 
        
          <c:forEach items="${listProduct}" var="p">
           <tr>  
          <td>${p.id}</td>
          <td>${p.name}</td>
          <td>${p.category}</td>
          <td>${p.price}</td>
          <td><a href="edit/${p.id}" class="btn btn-primary">Edit</a> </td>
          <td><a href="delete/${p.id}" class="btn btn-primary">Delete</a> </td>
          <td><a href="details" class="btn btn-primary">Details</a> </td>
          
          
          
          
          </tr>
          </c:forEach>
        </tbody> 

</table>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
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
  <div float=right 
  
  
  class="social">&#62223;</div>
  
</div>  </ul></h3>
  </div>
</nav>

</body>
</html>

