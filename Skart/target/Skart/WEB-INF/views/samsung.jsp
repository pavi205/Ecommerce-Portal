<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>SAMSUNG PAGE</title>


</head>
<body ngapp="">

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">MobileKart</a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="home">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="mobiles">Brands<span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					
					<li><a href="samsung">Samsung</a></li>
					<li><a href="iphone">Iphone</a></li>
					<li><a href="Micromax">Micromax</a></li>
					
				</ul></li>

             <li class="active"><a href="accessories">Access</a></li>

			<li class="active"><a href="contactus">Contact Us</a></li>

		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href=index>${name}</a></li>
		</ul>
	</div>
	</nav>
	<p><strong>Honor Mobile</strong></p>
	<div class="row">
	<div class="item">
		<img src="<c:url value="/resource/honor.jpg"/>" alt="honor"
			style="width: 100px; height: 200px">


	</div>

  
			<div class="col-md-6">
				<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
					
						</tr>
					</thead>
					<tbody>
		<form:form action="/categorylist" method="GET">
					
			<tr>		
			<td>${status.count}</td>
			<td>${category.id}</td>
			<td>${category.name}</td>
		
			</tr>
					 
					 </form:form>
					</tbody>
					
				</table>
					

	</div></div>
	

	
	<a href="cart?cart"><button type="submit" class="btn btn-warning">ADD
			TO CART</button></a>
			<button type="submit" class="btn btn-danger">Cancel
			</button>



<footer> <nav class="navbar navbar-inverse navbar-bottom">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home">MobileKart</a></li>
				<li><a href="home">Home</a></li>
				<li><a href="contactus">Contact Us</a></li>
				<li><a href="#">Delivery and Payment</a></li>
				<li><a href="#">FAQs</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Return Policy</a></li>

			</ul>


		</div>
		<p style="text-align: center;">Copyright @ 2016 MobileKart.com</p>
	</div>
	</nav> </footer>


</body>
</html>