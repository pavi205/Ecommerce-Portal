<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<title>HOME</title>
</head>
<body>

<div class="container text-center">

		<div class="jumbotron">
			<h1>Mobiles On Brand</h1>


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

             <li class="active"><a href="accessories">Accessories</a></li>

			<li class="active"><a href="contactus">Contact Us</a></li>

		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href=signup><span
					class="glyphicon glyphicon-user"></span>Sign Up</a></li>
			<li><a href=login>HELLO ${name}</a></li>
		</ul>
	</div>
	
	</nav>
	
<div class="container">
<div class="jumbotron">
<div class="row">

	<div class="col-sm-6">
	<img src="<c:url value="/resource/latest-mobiles.jpg"/>" alt="Redmi" width="500" height="345" >
	
	</div>

<div class="col-sm-6">
Attractive Branded Mobiles
	<p>Select Your Products For Special </p>
	<p>20% Discount</p>
	<div class="container">
Dont Miss Today's Discount           
 <a href="signup"><button type="button" class="btn btn-info">Join Here</button></a>
</div>
</div>

</div>	
</div>
</div>
	
<div class="container">
 
  <div class="panel-footer">
 <tab2 id="t1">  Mobiles....</tab2> 
 <tab1>
   www.mobilekart.com</tab1></div>
</div>

</div>
</div>	
	
	</body>
	</html>
	