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

<title>SHIPPING DETAILS</title>

<style>

.back-to-top {
cursor: pointer;
position: fixed;
bottom: 0;
right: 20px;
display:none;
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

<script type="text/javascript">
    $(document).ready(function(){
     $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('#back-to-top').tooltip('hide');
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
        
        $('#back-to-top').tooltip('show');
});
</script>
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
			<li><a href=index><span
					class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>
	
	</nav>


<div class="content">
		<fieldset>
			<legend>SHIPPING DETAILS</legend>
			
			<form:form commandName="cartdetails">
			<div class="control-group">
			<label class="control-label">NAME:</label>
			<div class="control docs-input-sizes">
			<form:input path="name" id="name" class="form-Control"	/>	</div>
			</div>
			
			<div class="control-group">
			<label class="control-label">ADDRESS LINE 1:</label>
			<div class="control docs-input-sizes">
			<form:input path="address" id="address" class="form-Control"	/>	</div>
			</div>
			
			<div class="control-group">
			<label class="control-label">MOBILE NUMBER</label>
			<div class="control docs-input-sizes">
			<form:input path="mobile" id="mobile" class="form-Control"	/>	</div>
			</div>
			
			<div class="span1">
			<input type="hidden" name="_flowExecutionKey" />
			<a href="${flowExecutionUrl}&_eventId_shippingAddProcessCompleted"><input type="submit" value="Next" class="btn btn-primary" 
			name="_eventId_shippingAddProcessCompleted"/></a>
			
			</div>
			</form:form>
			
</fieldset>
</div>
<a id="back-to-top" href="home" class="btn btn-primary btn-lg back-to-top" 
  role="button" title="Back to Top" data-toggle="tooltip" data-placement="top">
  <span class="glyphicon glyphicon-chevron-up"></span>
</a>
<br />
<br /><br />	
	
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
	