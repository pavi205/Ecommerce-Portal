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
<title>welcome</title>

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

<script type="text/javascript">
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 50) {
				$('#back-to-top').fadeIn();
			} else {
				$('#back-to-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-to-top').click(function() {
			$('#back-to-top').tooltip('hide');
			$('body,html').animate({
				scrollTop : 0
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
				data-toggle="dropdown" href="mobiles">Brands<span class="caret"></span></a>
				<ul class="dropdown-menu">

					<li><a href="prodinfo">Samsung</a></li>
					<li><a href="#">Iphone</a></li>
					<li><a href="#">Micromax</a></li>

				</ul></li>

			<li class="active"><a href="access">Accessories</a></li>

			<li class="active"><a href="contactus">Contact Us</a></li>

		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span class="glyphicon glyphicon-user"></span>Sign
					Up</a></li>
			<li><a href="index"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
		</ul>
	</div>

	</nav>
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

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<a href="product"><img src="<c:url value="/resource/222.jpg"/>"
					alt="Redmi" style="width: 1500px; height: 300px"></a>
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<a href="product"><img src="<c:url value="/resource/i6s.jpg"/>"
					alt="Samsung" style="width: 1500px; height: 300px"></a>
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<a href="product"><img src="<c:url value="/resource/i6.jpg"/>"
					alt="Samsung" style="width: 1500px; height: 300px"></a>
				<div class="carousel-caption"></div>
			</div>


			<div class="item">
				<img src="<c:url value="/resource/lab1.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="<c:url value="/resource/Iphone6ss.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="<c:url value="/resource/mob2.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="<c:url value="/resource/samsunggs7.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="<c:url value="/resource/lab2.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="<c:url value="/resource/leno.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="<c:url value="/resource/mob.jpg"/>" alt="Micromax"
					style="width: 1500px; height: 300px">
				<div class="carousel-caption"></div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<br />
	<br />
<!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <center><h1 class="page-header">Offer of the day 30%</h1></center>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="prodinfo">
                    <img class="img-responsive" src="<c:url value="/resource/honor.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/htc.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/iphone.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/m2.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/m3.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/moto.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/s1.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/asus.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/bb.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/bb1.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/htc1.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/bb.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
</div></div>

<a href="samsung">View more..</a>

<br /><br />
<!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <center><h1 class="page-header">Latest Accessories Available here</h1></center>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="prodinfo">
                    <img class="img-responsive" src="<c:url value="/resource/a1.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a2.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a13.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-primary" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick  Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a15.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a16.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a17.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a7.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a8.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a9.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a10.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a11.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="<c:url value="/resource/a12.jpg"/>" alt="" style="width: 100px; height: 200px">
                </a>
                <button class="btn btn-warning" action="samsung">View Details</button>
                 <button class="btn btn-danger" action="samsung">Quick Buy</button>
            </div>
</div></div>

<a href="access">View more..</a>


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
				<li><a href="home">Home</a></li>
				<li><a href="contactus">Contact Us</a></li>
				<li><a href="#">Delivery and Payment</a></li>
				<li><a href="#">FAQs</a></li>
				<li><a href="#">Privacy Policy</a></li>
				<li><a href="#">Return Policy</a></li>

			</ul>


		</div>
		<p style="text-align: center;">Copyright @ 2016 MobileKart.com</p>
	</div>
	</nav> </footer>


</body>
</html>
