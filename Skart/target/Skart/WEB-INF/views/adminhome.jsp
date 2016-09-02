<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>ADMIN HOME</title>
</head>
<body ng-app="">

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">

				<div class="navbar-header">
					<a class="navbar-brand" href="home">MobileKart</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="adminhome">Admin Home</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="active"><a href="categorylist">Type Of Product</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="active"><a href="productlist">Product</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="active"><a href="supplierlist">Suppliers</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li class="active"><a href="adminhome">WELCOME<strong>${name}</strong></a></li>
					
								</ul>
			</div>

			</nav>
		
 
		


				

</body>
</html>
