<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


<title>Login</title>
</head>
<body>


<div class="container text-center">

		<div class="jumbotron">
			<h1>Mobile On Brand</h1>

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
			<li><a href=login><span
					class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>

	</nav>


	<br>
	<br>
	
<div style="height:1000px;font-size:36px">

	<div class="container">


		<div class="jumbotron">


			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">

					<form role="form">
						<h2>
							Please Login <small>Attractive Discounts Available.</small>
						</h2>
						<hr class="colorgraph">
						<div class="row">

							<div class="form-group" role= "POST">
								<input type="username" name="username" id="username"
									class="form-control input-lg" placeholder="User Name"
									tabindex="1" required="">
							</div>

							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-lg" placeholder="Password"
									tabindex="2" required="">
							</div>
						</div>
						<div class="control-group">
							<!-- Button -->
							<div class="controls">
								<a herf="home"><button class="btn btn-success" >Login</button></a>
							</div>

						</div>
</form>
				</div>
			</div>

		</div>
	</div>

</div>
</div>
</div>


</body>
</html>