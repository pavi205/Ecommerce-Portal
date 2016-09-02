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
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Footer</title>

<style>
.back-to-top {
	cursor: pointer;
	position: fixed;
	bottom: 0;
	right: 20px;
	display: none;
}

footer {
	background-color: #f2f2f2;
}

footer {
	position: bottom;
	height: 50px;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

<a id="back-to-top" href="home"
		class="btn btn-primary btn-lg back-to-top" role="button"
		title="Back to Top" data-toggle="tooltip" data-placement="top"> <span
		class="glyphicon glyphicon-chevron-up"></span>
	</a>
	<br />
	<br />
	<br />

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
				<li><a href="#">Delivery and Payment</a></li>
				<li><a href="#">FAQs</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Return Policy</a></li>

			</ul>


		</div>
		<p style="text-align: center;"><strong>Copyright @ 2016 MobileKart.com</strong></p>
	</div>
	</nav> </footer>


</body>
</html>