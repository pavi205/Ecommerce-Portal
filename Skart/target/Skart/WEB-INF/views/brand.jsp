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

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<title>Brands</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="home">MobileKart</a>
		</div>

		<ul class="nav navbar-nav">
			<li class="active"><a href="home">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="mobiles">MOBILES<span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="brand">Brands</a></li>
					<li><a href="discount">Discount</a></li>
				</ul></li>


			<li class="active"><a href="contactus">Contact Us</a></li>

		</ul>


		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-user"></span>Sign Up</a></li>
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>

	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="<c:url value="/resource/m1.jpg"/>" data-slide-to="0" class="active"></li>
				<li data-target="<c:url value="/resource/m2.jpg"/>" data-slide-to="1"></li>
				<li data-target="<c:url value="/resource/m3.jpg"/>" data-slide-to="2"></li>
				<li data-target="<c:url value="/resource/m4.jpg"/>" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<a href="product"><img src="<c:url value="/resource/m1.jpg"/>" alt="Redmi" width="245" height="345" ></a>
					<div class="carousel-caption">
						<h3>Mobiles</h3>
						<p>Redmi mobiles</p>
					</div>
				</div>

				<div class="item">
					<a href="product"><img src="<c:url value="/resource/m2.jpg"/>" alt="iphone" width="245" height="345"></a>
					<div class="carousel-caption">
						<h3>iphones</h3>
						<p>Branded iphones on sale.</p>
					</div>
				</div>

				<div class="item">
					<a href="product"><img src="<c:url value="/resource/m3.jpg"/>" alt="Samsung" width="245" height="345"></a>
					<div class="carousel-caption">
						<h3>samsung</h3>
						<p>Samsung Galaxy j7 Ultimate Review</p>
					</div>
				</div>

				<div class="item">
					<img src="<c:url value="/resource/m4.jpg"/>" alt="Micromax" width="245" height="345">
					<div class="carousel-caption">
						<h3>Micromax</h3>
						<p>Micromax Canvas</p>
					</div>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<a href="product"><img src="<c:url value="/resource/m2.jpg"/>" alt="iphone" class="img-rounded" width="245"
		heigth="400"> </a>
		
		<a href="product"><img src="<c:url value="/resource/m3.jpg"/>" alt="mobile"
		class="img-circle" width="245" heigth="400"></a>
		
	<a href="product"> <img src="<c:url value="/resource/m4.jpg"/>" alt="samsung" class="img-thumbnail" width="245"
		heigth="400"></a> </nav>
		
		
</body>
</html>
