<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page session="false"%>

<title>SUPPLIER LIST</title>
</head>
<body>


<div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form action="" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="search">
              		<span class="glyphicon glyphicon-search form-control-feedback"></span>
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
		<ul class="nav navbar-nav navbar-right">
			
			<li><a href="login"><span
					class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>
	</nav>
	${message}
	
	<a href ="categorylist">Categories</a> | <a href="productlist">Products</a> | <a href ="supplierlist">Suppliers</a>
	<p>Add a Supplier</p>

	
	<div align="center">


		<c:url var="addAction" value="/supplierlist/add"></c:url>

		<form:form action="${addAction}" commandName="supplier">
			<table>
				<c:if test="${!empty supplier.name}">
					<h1>Edit Supplier</h1>
				</c:if>
				<c:if test="${empty supplier.name}">
					<h1>Add a Supplier</h1>
				</c:if>
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty supplier.id}">
							<td><form:input path="id" disabled="true" readonly="true" />
							</td>
						</c:when>

						<c:otherwise>
							<td><form:input path="id" pattern=".{6,7}" required="true"
									title="id should contains 6 to 7 characters" /></td>
						</c:otherwise>
					</c:choose>
				<tr>
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name" />
						</form:label></td>
					<td><form:input path="name" required="true"
							pattern="[a-zA-Z][a-zA-Z\s]*" /></td>
				</tr>
				<tr>
					<td><form:label path="description">
							<spring:message text="Description" />
						</form:label></td>
					<td><form:input path="description" required="true"
							title="Enter city" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Edit Supplier"/>" />
						</c:if> <c:if test="${empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Add Supplier"/>" />
						</c:if><input type="reset" value="<spring:message text="Clear"/>" /></td>
				</tr>
			</table>
		</form:form>
		<br>
		<c:if test="${!empty supplier.name}">
			<h1></h1>
		</c:if>
		<c:if test="${empty supplier.name}">
			<h3>Supplier List</h3>
		</c:if>

		<c:if test="${!empty supplierList}">
			<table class="imagetable">
				<tr>
					<th width="80">Supplier ID</th>
					<th width="120">Supplier Name</th>
					<th width="120">Supplier Address</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.id}</td>
						<td>${supplier.name}</td>
						<td>${supplier.description}</td>
						<td><a href="<c:url value='supplierlist/edit/${supplier.id}' />">Edit</a></td>
						<td><a
							href="<c:url value='supplierlist/remove/${supplier.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<br />
<br />
	

	</body>
	</html>