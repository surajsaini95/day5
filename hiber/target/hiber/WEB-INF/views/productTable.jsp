<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
 <html>  
 <head>  
   <title>productTable </title>  
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/4.10.1/bootstrap-social.css" rel="stylesheet" >
  
   <script>  
     var app = angular.module('productTable', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.products = ${myJson};  //This code is extracting the string object being sent from controller
       $scope.totalItems = $scope.products.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.products.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     }  
   </style>  
 </head>  
 <body ng-app="productTable" bgcolor=lightgrey> 
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
 
  
   <div ng-controller="myCtrl">  
     <div class="container-flu.id">  
      
<h3>Filter   :   <input type="text" ng-model="search.$" /> </h3>
          
       <hr />  
       <table class="table table-striped">  
         <thead>  
          <tr>
          	 <th><a href="" ng-click="order('id')">Id</a></th>   
             <th><a href="" ng-click="order('category')">Category</a> </th>  
             <th><a href="" ng-click="order('name')">Name</a></th>  
             <th><a href="" ng-click="order('price')"> Price</a> </th>  
            	<th>		</th></tr> 
         </thead>  
         <tbody>  
            
           <tr ng-repeat="listProduct in products | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             
             <td>{{listProduct.id}}</td>  
            <td>{{listProduct.category}}</td>  
            <td>{{listProduct.name}}</td>  
             <td>{{listProduct.price}}</td>  
            <td><a href="productdescription?id={{listProduct.id}}" class="btn btn-primary" >Details</a> </td>
          
             </tr>  
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
   
  <!--  ${myJson}-->
 
 
 <nav class="navbar navbar-inverse ">
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
 