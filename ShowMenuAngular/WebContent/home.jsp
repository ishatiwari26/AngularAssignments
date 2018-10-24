<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
<script src="angular.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<body ng-app="orderByExample">

	<div ng-controller="mainCtrl">
		<hr>
		<h1 align="center">Emplyoee List</h1>
		<hr>
		<div class="input-group">
			<input ng-model="searchText" type="text" class="form-control"
				placeholder="Filter the list.."> <span
				class="input-group-btn">
				<button class="btn btn-default" type="button">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</span>
		</div>

		<table id="myTable" class="table">
			<tr>
				<th style="display: none">Customer Id</th>
				<th>Name</th>
				<th>Full Name</th>
				<th>Gender</th>
				<th>Email Id</th>
				<th>Phone No</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<tr data-ng-repeat="customer in customers | filter:searchText">
				<td id="custId" style="display: none">{{customer.customerId}}</td>
				<td><span data-ng-hide="editMode">{{customer.customerName
						}}</span> <!-- | genderFilter --> <input type="text"
					data-ng-show="editMode" data-ng-model="customer.customerName"
					data-ng-required /></td>
					 <td >{{customer | genderFilter}}</td>
				<td><span data-ng-hide="editMode">{{customer.customerGender}}</span>
					<input type="text" data-ng-show="editMode"
					data-ng-model="customer.customerContactNo" data-ng-required /></td>
				<td><span data-ng-hide="editMode">{{customer.customerEmail}}</span>
					<input type="text" data-ng-show="editMode"
					data-ng-model="customer.customerEmail" data-ng-required /></td>
				<td><span data-ng-hide="editMode">{{customer.customerContactNo}}</span>
					<input type="text" data-ng-show="editMode"
					data-ng-model="customer.customerContactNo" data-ng-required /></td>


				<td><button type="submit" data-ng-hide="editMode"
						data-ng-click="editMode = true; editAppKey(entry)"
						class="btn btn-warning">Edit</button>
					<button type="submit" data-ng-show="editMode"
						data-ng-click="editMode = false; updateUser(customer)"
						class="btn btn-success">Update</button>
					<button type="submit" data-ng-show="editMode"
						data-ng-click="editMode = false; cancel()" class="btn btn-success">Cancel</button>
				</td>
				<td><button ng-click="deleteCustomer(customer)"
						class="btn btn-danger">Delete</button></td>
			</tr>
		</table>
	</div>
</body>
</html>