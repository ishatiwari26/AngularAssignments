<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/style.css" />
<script src="js/main.js"></script>
<body ng-app="myAppLogin" ng-controller="myCtrl">
	<div class="container">
		<div class="col-md-5">
			<div class="form-area">
				<form role="form">
					<br style="clear: both">
					<h3 style="margin-bottom: 25px; text-align: center;">Contact
						Form</h3>
					<div class="form-group">
						<input type="text" class="form-control" id="name" name="name" ng-model="name"
							placeholder="Name" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" ng-model="email"
							placeholder="Email" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobile" ng-model="mobile"
							placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subject" ng-model="subject"
							name="subject" placeholder="Subject" required>
					</div>
					<div class="form-group">
						<textarea class="form-control" type="textarea" id="message" ng-model="message"
							placeholder="Message" maxlength="140" rows="7"></textarea>
						<span class="help-block"><p id="characterLeft"
								class="help-block ">You have reached the limit</p></span>
					</div>

					<input type="submit" class="btn btn-info" value="Submit"
						ng-click="myFunc()">
				</form>
			</div>
		</div>
		<div class="col-md-5">
			<div class="form-area">
				<br style="clear: both">
				<h3 style="margin-bottom: 25px; text-align: center;">Details Of
					User :-</h3>
				<div class="form-group">{{userName}}</div>
				<div class="form-group">{{userEmail}}</div>
				<div class="form-group">{{userMobile}}</div>
				<div class="form-group">{{userSubjectOfContact}}</div>
				<div class="form-group">{{userMessage}}</div>
			</div>
		</div>
	</div>

</body>
</html>