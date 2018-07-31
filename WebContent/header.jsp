<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Career Zone</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
<!-- bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="themes/css/bootstrappage.css" rel="stylesheet" />

<!-- global styles -->
<link href="themes/css/flexslider.css" rel="stylesheet" />
<link href="themes/css/main.css" rel="stylesheet" />

<!-- scripts -->
<script src="themes/js/jquery-1.7.2.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="themes/js/superfish.js"></script>
<script src="themes/js/jquery.scrolltotop.js"></script>

<style>
ul li a {
	display: block;
	text-decoration: none;
	color: #000;
	padding: 5px 15px 5px 15px;
	margin-left: 1px;
	white-space: nowrap;
}

ul li a:hover {
	background: #3b3b3b;
}

.dpdwn span {
	display: none;
}

.dpdwn:hover span {
	display: block;
}
</style>

</head>
<body>
	<div id="top-bar" class="container">
		<div class="row">
			<div class="span4">
				<a href="home" class="logo pull-left"> <img
					src="image/logonew1(edited).png" class="site_logo"
					style="width: 200px; height: 80px;" alt="">
				</a>
				<!-- <form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form> -->
			</div>
			<div class="span8">
				<div class="account pull-right">
					<nav id="menu" class="pull-right">
					<ul class="user-menu">
						<li><a href="home"
							style="font-size: 13px; font-weight: bold; color: #000;">Home</a></li>
						<li><a href="contactus"
							style="font-size: 13px; font-weight: bold; color: #000;">Contact
								Us</a></li>
						<s:if test="#session.username!=null">
							<li class="dpdwn"><a href="account"
								style="font-size: 13px; font-weight: bold; color: #000;">Hello,
									<s:property value="#session.username" />
							</a> <span><a href="userlogout"
									style="font-size: 13px; font-weight: bold;">Sign Out</a></span></li>
						</s:if>
						<s:else>
							<li><a href="loginregistration"
								style="font-size: 13px; font-weight: bold; color: #000;">Login/Register</a></li>
						</s:else>
					</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div id="wrapper" class="container">
		<section class="navbar main-menu">
		<div class="navbar-inner main-menu">
			<!-- <a href="index.jsp" class="logo pull-left">Online Metro Logo
					<img src="themes/images/logo.png" class="site_logo" alt="">
					</a> -->
			<nav id="menu" class="pull-right">
			<ul>
				<li><a href="educationprogram.jsp"
					style="font-size: 13px; font-weight: bold; color: #000;">Education
						Program</a></li>
				<li><a style="font-size: 13px; font-weight: bold; color: #000">Career</a>
					<ul>
						<s:if test="#session.username!=null">
							<li><a href="freshercareer">Fresher</a></li>
							<li><a href="experiencecareer">Experience</a></li>
						</s:if>
						<s:else>
							<li><a href="freshercareerlogin">Fresher</a></li>
							<li><a href="experiencecareerlogin">Experience</a></li>
						</s:else>
					</ul></li>
				<li><a style="font-size: 13px; font-weight: bold; color: #000;">Tutorials</a>
					<ul>
						<li><a href="clanguage">C</a></li>
						<li><a href="cpplanguage">C++</a></li>
						<li><a href="javaprogramming">Core Java</a></li>
						<li><a href="advjava">Java Frameworks</a></li>
						<li><a href="softwaretesting">Testing</a></li>
						<li><a href="learnothers">Others</a></li>
					</ul></li>
				<li><a href="onlinetraining.jsp"
					style="font-size: 13px; font-weight: bold; color: #000;">Online
						Training</a></li>
				<li><a href="test"
					style="font-size: 13px; font-weight: bold; color: #000;">Online
						Test</a>
					<ul>
						<li><a href="test">Practice papers</a></li>
						<li><a href="test">Online Test</a></li>
					</ul></li>

			</ul>
			</nav>
		</div>
		</section>