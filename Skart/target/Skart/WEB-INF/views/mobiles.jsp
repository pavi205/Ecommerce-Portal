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


<title>products</title>
</head>
<body>

	<div class="container text-center">

		<div class="jumbotron">
			<h1>Mobile On Brand</h1>


			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="home.jsp">MobileKart</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="home.jsp">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="mobiles.jsp">MOBILES<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="brand.jsp">Brands</a></li>
							<li><a href="discount.jsp">Discount</a></li>
						</ul>
					<li class="active"><a href="contactus.jsp">Contact Us</a></li>
					

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href=signup.jsp><span
							class="glyphicon glyphicon-user"></span>Sign Up</a></li>
					<li><a href=login.jsp><span
							class="glyphicon glyphicon-log-in"></span>Login</a></li>
				</ul>
			</div>


			</nav>
		</div>
	</div>

</body>
</html>