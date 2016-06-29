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


<title>Sign Up</title>
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
				data-toggle="dropdown" href="brand">Brands<span
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

	<div class="container">

		<h1>Register Now!!!</h1>

		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">
					<h2>
						Please Sign Up <small>It's free and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="first_name" id="first_name"
									class="form-control input-lg" placeholder="First Name"
									tabindex="1">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="last_name" id="last_name"
									class="form-control input-lg" placeholder="Last Name"
									tabindex="2" required="">
							</div>
						</div>
					</div>

					<div class="form-group">
						<input type="email" name="email" id="email"
							class="form-control input-lg" placeholder="Email Address"
							tabindex="3" required="">
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-lg" placeholder="Password"
									tabindex="4" required="">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="confirm password" name="confirm password" id="confirm password"
									class="form-control input-lg" placeholder="Confirm Password"
									tabindex="4" required="">
							</div>
						</div>

					</div>
					<div class="form-group">
						<input type="contact" name="contact" id="contact"
							class="form-control input-lg" placeholder="Contact No."
							tabindex="5" required="">
					</div>

					<div class="form-group">
						<input type="address" name="address" id="address"
							class="form-control input-lg" placeholder="Address" tabindex="6"
							required="">
					</div>


					<div class="row">
						<div class="col-xs-4 col-sm-3 col-md-3">
							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info" tabindex="7">I
									Agree</button> <input type="checkbox" name="t_and_c" id="t_and_c"
								class="hidden" value="1">
							</span>
						</div>
						<div class="col-xs-8 col-sm-9 col-md-9">
							By clicking <strong class="label label-primary">Register</strong>,
							you agree to the <a href="#" data-toggle="modal"
								data-target="#t_and_c_m">Terms and Conditions</a>
						</div>
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="Register"
								class="btn btn-primary btn-block btn-lg" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="home" class="btn btn-success btn-block btn-lg">Login</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">
						<p>The Terms and Conditions (T&C) contained herein along with
							the Privacy Policy and Terms of Use, form an Agreement regulating
							our relationship with regard to the use of Times Internet
							Limited's 'Indiatimes shopping' Platform (Site) by you. These
							terms of use (Terms) constitute a legally binding agreement
							between you and the Company regarding your use of the web site
							i.e. shopping.indiatimes.com (the Site) and any services offered
							by the company including but not limited to delivery of content
							via the Site, any mobile or internet connected device or
							otherwise (the "the Service"). By accessing the Site or Service
							and/or by clicking "I agree", you agree to be bound by these
							Terms. You hereby represent and warrant to the Company that you
							are at least eighteen (18) years of age or above and are capable
							of entering, performing and adhering to these Terms and that you
							agree to be bound by the following terms and conditions. While
							individuals under the age of 18 may utilize the Service of the
							site, they shall do so only with the involvement & guidance of
							their parents and / or legal guardians, under such Parent /Legal
							guardian's registered account . You agree to register prior to
							uploading any content and / or comment and any other use or
							services of this site and provide your details including but not
							limited to complete name, age, email address, residential
							address, contact number. Please read this Agreement carefully.
							You are advised to regularly check for any amendments or updates
							to the terms and conditions from time to time. Times Internet
							Limited may add to or change or update these Terms of Use, from
							time to time entirely at the its own discretion. You are
							responsible for checking these Terms of Use periodically to
							remain in compliance with these terms. Your use of Site and any
							amendment to the Terms of Use shall constitute your acceptance of
							these terms and you also agree to be bound by any such
							changes/revisions/amendments. You accept the Site Terms of Use,
							Privacy Policy and other Site policies by clicking the "secure
							login/register" button when registering and logging into the
							Site; accessing or using Site, services, applications, and tools
							provided herein; or as otherwise indicated on a specific site,
							service, application, or tool from time to time. Some Site
							services, applications, and tools may have additional or other
							terms, agreements, or policies that govern their availability and
							use. Your use of and access to such sites, services,
							applications, and tools are subject to any and all terms,
							agreements, or policies applicable to them. Any clause of terms
							and conditions if deemed invalid, void or for any reason
							unenforceable, shall be deemed severable and shall not affect the
							validity and enforceability of the remaining clauses of the terms
							and conditions.</p>

						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">I Agree</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
	</div>

</div>

 <div class="panel-footer">
 <tab2 id="t1">  Mobiles....</tab2> 
 <tab1>
   www.mobilekart.com</tab1></div>
</div>

</body>


</html>