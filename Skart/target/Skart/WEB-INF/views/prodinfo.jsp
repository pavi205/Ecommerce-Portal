<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Product Info</title>
</head>

<body>
<script>
var val=${productinfo};
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = val;
		
	});
</script>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">MobileKart</a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="home">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="mobiles">Brands<span class="caret"></span></a>
				<ul class="dropdown-menu">

					<li><a href="prodinfo">Samsung</a></li>
					<li><a href="#">Iphone</a></li>
					<li><a href="#">Micromax</a></li>

				</ul></li>

			<li class="active"><a href="access">Accessories</a></li>

			<li class="active"><a href="contactus">Contact Us</a></li>

		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>Sign
					Up</a></li>
			<li><a href="index"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>

	</nav>

<div ng-app="myApp" ng-controller="myCtrl">
	<img src="<c:url value="C:\\Users\\RAMESH J\\workspace\\Skart\\src\\main\\webapp\\WEB-INF\\resource\\images\\{{list.name}}.jpeg"/>" style="width: 100px; height: 200px">
	{{list.brand}}   
	    &#8377;{{list.price}}/-
		Product Details
		<p>{{list.model}}</p>
		<p>{{list.display_size}}</p>
		<p>{{list.resolution}}</p>
		<p>{{list.processor}}</p>
		<p>{{list.color}}</p>
		<p>{{list.pcamera}}</p>
		<p>{{list.scamera}}</p>
		<p>{{list.os}}</p>
		<p>{{list.network_type}}</p>
		<p>{{list.storage}}</p>
		<p>{{list.battery}}</p>
		
  
 		<a href="cart?cart"><button type="submit" class="btn btn-warning">Quick Buy
			</button></a>
			<button type="submit" class="btn btn-danger">Add to cart
			</button>
	</div>		
  
    
<br />
<br /><br /><br />

<%@include file="footer.jsp"%>
</body>
</html>