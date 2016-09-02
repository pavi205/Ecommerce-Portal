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

<title>PRODUCT LIST</title>
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

	
	
	${message}
	<p>Add a Product</p>

	<c:url var="addAction" value="/productlist/add"></c:url>

	<form:form action="${addAction}" commandName="product">
		<table>
				<c:if test="${!empty product.brand}">
					<h1>Edit </h1>
				</c:if>
				<c:if test="${empty product.brand}">
					<h1>Add </h1>
				</c:if>
				<tr>
			
				<td><form:label path="brand">
					<spring:message text="Brand" />	
					</form:label></td>
				<td><form:input path="brand" required="true" /><br /></td>
			</tr>
			<br />
			<tr>
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="model">
						<spring:message text="Model" />
					</form:label></td>
				<td><form:input path="model" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="battery">
						<spring:message text="Battery" />
					</form:label></td>
				<td><form:input path="battery" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="color">
						<spring:message text="Color" />
					</form:label></td>
				<td><form:input path="color" required="true" /><br/></td>
			</tr>
			
			<tr>
				<td><form:label path="display_size">
						<spring:message text="Display_size" />
					</form:label></td>
				<td><form:input path="display_size" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="network_type">
						<spring:message text="Network_type" />
					</form:label></td>
				<td><form:input path="network_type" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="os">
						<spring:message text="Os" />
					</form:label></td>
				<td><form:input path="os" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="pcamera">
						<spring:message text="Pcamera" />
					</form:label></td>
				<td><form:input path="pcamera" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="processor">
						<spring:message text="Processor" />
					</form:label></td>
				<td><form:input path="processor" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="resolution">
						<spring:message text="Resolution" />
					</form:label></td>
				<td><form:input path="Resolution" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="scamera">
						<spring:message text="Scamera" />
					</form:label></td>
				<td><form:input path="scamera" required="true" /><br /></td>
			</tr>
			
			<tr>
				<td><form:label path="storage">
						<spring:message text="Storage" />
					</form:label></td>
				<td><form:input path="storage" required="true" /><br /></td>
			</tr>
			
						
			<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<%-- <td><form:input path="supplier.name" required="true" /></td> --%>
				 <td><form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<%-- <td><form:input path="category.name" required="true" /></td> --%>
				<td><form:select path="category.type" items="${categoryList}" itemValue="type" itemLabel="type" /></td>
			</tr>
			<tr>
			<td><a href="<c:url value="/upload"/>">
<span class="glyphicon glyphicon-upload"></span> <input type="submit" value="Upload Image"/> </a></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.brand}">
						<button type="submit" value="Edit" ></button>
					</c:if> <c:if test="${empty product.brand}">
						<input type="submit" value="Add" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>

	
	<p>GET ALL Product</p>

<div class="row">
			<div class="col-md-6">


				<table class="table table-bordered">
					<thead>
						<tr>
						   	<th>ID</th>
							<th>BRAND</th>
							<th>PRICE</th>
							<th>MODEL</th>
							<th>BATTERY</th>
							<th>COLOR</th>
							<th>DISPLAY_SIZE</th>
							<th>NETWORK_TYPE</th>
							<th>OS</th>
							<th>PRIMARY CAMERA</th>
							<th>PROCESSOR</th>
							<th>RESOLUTION</th>
							<th>SECONDARY CAMERA</th>
							<th>STORAGE</th>
							<th>CATEGORY_ID</th>
							<th>SUPPLIER_ID</th>
					
					</thead>
					<tbody>
					
					<c:forEach items="${productList}" var="product" varStatus="status">
					<tr>
			
			<td>${product.id}</td>
			<td>${product.brand}</td>
			<td>${product.price}</td>
			<td>${product.model}</td>
			<td>${product.battery}</td>
			<td>${product.color}</td>
			<td>${product.display_size}</td>
			<td>${product.network_type}</td>
			<td>${product.os}</td>
			<td>${product.pcamera}</td>
			<td>${product.processor}</td>
			<td>${product.resolution}</td>
			<td>${product.scamera}</td>
			<td>${product.storage}</td>
			<td>${product.category_id}</td>
			<td>${product.supplier_id}</td>
			
		
			<td><a href="<c:url value='productlist/edit/${product.id}' />">Edit</a></td>
			<td><a href="<c:url value='productlist/remove/${product.id}' />">Delete</a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>
	</div>
	

	</body>
	</html>