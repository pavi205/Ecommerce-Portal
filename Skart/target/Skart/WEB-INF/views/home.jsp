<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<title>HOME</title>
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
			<li><a href=signup><span
					class="glyphicon glyphicon-user"></span>Sign Up</a></li>
			<li><a href=login><span
					class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>
	
	</nav>
	
	<img src="<c:url value="/resource/latest-mobiles.jpg"/> alt="Redmi" width="245" height="345" >
	
	
	
<div id="footer">
      <div class="container">
        <p class="text-muted credit">www.mobilekart.com></p>
      </div>
    </div>	
	
	
	</body>
	</html>
	