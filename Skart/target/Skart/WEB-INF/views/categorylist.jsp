<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="helloApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false"%>
<%@ page session="false"%>

<title>CATEGORY LIST</title>


	<script type="text/javascript">
 function myFunction() {
	 {
	      var x = confirm("Are you sure you want to delete?");
	      if (x)
	          return true;
	      else
	        return false;
	    }
    
}
</script>

<script>
var a=${list};
  $(function() {
    var availableTags = [
   
    ];
    $( "#tag" ).autocomplete({
      source: availableTags
    });
  });
  </script>
  <script>
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = ${list};
		
		
	});
</script>
	</head>
	<body ng-controller="CompanyCtrl">
			<div class="row">
				<div class="col-md-4 col-md-offset-3">
					<form action="" class="search-form">

						<div class="form-group has-feedback">
							<label for="search" class="sr-only">Search</label> <input
								type="text" class="form-control" name="search" id="search"
								placeholder="search"> <span
								class="glyphicon glyphicon-search form-control-feedback"></span>

						</div>
					</form>
				</div>
			</div>


			<br />
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

					<li class="active"><a href="#">WELCOME<strong>${name}</strong></a></li>
					
								</ul>
			</div>

			</nav>

		<div align="center">


		<c:url var="addAction" value="/categorylist/add"></c:url>

		<form:form action="${addAction}" commandName="category">
			<table>
				<c:if test="${!empty category.type}">
					<h1>Edit </h1>
				</c:if>
				<c:if test="${empty category.type}">
					<h1>Add </h1>
				</c:if>
				
				<tr>
					<td><form:label path="type">
							<strong><spring:message text="Type" /></strong>
						</form:label></td>
					<td><form:input path="type" required="true" pattern="[a-zA-Z][a-zA-Z\s]*" /><br /></td>
					
				</tr>
				<br />
				<tr>
				
					<td><form:label path="description">
							<strong><spring:message text="Description" /></strong>
						</form:label></td>
					<td><br /><form:input path="description" required="true" /><br /></td>
				</tr>
				
				<tr>
					<td colspan="2"><c:if test="${!empty category.type}">
							<input type="submit" class="btn btn-primary"
								value="<spring:message text="Edit"/>">
						</c:if> <c:if test="${empty category.type}">
							<input type="submit"
								value="<spring:message text="Add "/>" />
						</c:if><input type="reset" class="btn btn-primary" value="<spring:message text="Clear"/>" ></td>
				</tr>
			</table>
		</form:form>
		<br>
		<c:if test="${!empty category.type}">
			<h1></h1>
		</c:if>
		<c:if test="${empty category.type}">
			<h3>Supplier List</h3>
		</c:if>

		<c:if test="${!empty categoryList}">
			<table class="imagetable">
				<tr>
					<th width="80">Category ID</th>
					<th width="120">Category Type</th>
					<th width="120">Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${categoryList}" var="category">
					<tr>
						<td>${category.id}</td>
						<td>${category.type}</td>
						<td>${category.description}</td>
						<td><a href="<c:url value='categorylist/edit/${category.id}' />">Edit</a></td>
						<td><a
							href="<c:url value='categorylist/remove/${category.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<br />
<br />	
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	
			<footer>

<nav class="navbar navbar-inverse navbar-bottom">
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
					<p style="text-align:center;">Copyright @ 2016 MobileKart.com</p> 
			</div>
		</nav>
	
	
	
	</footer>
	
			
	
</body>
</html>