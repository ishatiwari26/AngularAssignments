<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/style.css" />
<script src="js/script.js"></script>

<body ng-app="myApp" ng-controller="mainCtrl">

	<div class="container-fluid">
		<div class="row">

			<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img src="images/bird.jpg"
						class="img-circle" alt="Bird" width="50" height="50"></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#!home">Home</a></li>
						<li><a href="#!about">About</a></li>
						<li><a href="#!contact">Contact Us</a></li>
					</ul>
				</div>
			</div>
			</nav>
			<div class="col-sm-12">
				<!-- <element-with-style>123</element-with-style> -->
				<div class="container-fluid bg-3 text-center">
					<h3>Where To Find Me?</h3>
					<p>Welcome to Angular JS 1.4 Assignment Page. Please visit Home, About Us and 
					Contact Us Page to check the Final Assignment related to Angular Js 1.4</p>
				</div>
			</div>
			<div class="col-sm-12">
				<div ng-view></div>
			</div>
		</div>
	</div>

	<footer class="container-fluid">
	<p>Footer Text</p>
	</footer>
</body>
</html>