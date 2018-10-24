var app = angular.module("myApp", [ "ngRoute" ]);
app.config(function($routeProvider) {
	$routeProvider.when("/home", {
		templateUrl : "home.jsp",
		controller : "mainCtrl"
	}).when("/about", {
		templateUrl : "about.jsp"
	}).when("/contact", {
		templateUrl : "contact.jsp",
		controller : "contactCtr"
	});
});
app.controller("contactCtr", function($scope) {
	$scope.myFunc = function() {
		$scope.userName = $scope.name;
		$scope.userEmail = $scope.email;
		$scope.userMobile = $scope.mobile;
		$scope.userSubjectOfContact = $scope.subject;
		$scope.userMessage = $scope.message;
	}
});

app.controller('mainCtrl', function($scope, $http) {

	$http.get('http://localhost:8082/customer/customers').then(
			function(response) {
				$scope.customers = response.data;
			});
	$scope.deleteCustomer = function(customer) {
		$http(
				{
					method : 'DELETE',
					url : 'http://localhost:8082/customer/delete/'
							+ customer.customerId
				}).then(
				function(result) {
					var i;
					// result is the item you changed
					$http.get('http://localhost:8082/customer/customers').then(
							function(response) {
								$scope.customers = response.data;
								alert("User has deleted Successfully")
							});
				});
	};

	$scope.updateUser = function(customer) {
		// $http PUT function
		$http({

			method : 'PUT',
			url : 'http://localhost:8082/customer/update',
			data : {
				customerId : customer.customerId,
				customerName : customer.customerName,
				customerContactNo : customer.customerContactNo,
				customerEmail : customer.customerEmail,
				isActive : "Y",
				createdDate : "2018-10-01"
			}

		}).then(function successCallback(response) {

			alert("User has updated Successfully")

		}, function errorCallback(response) {

			alert("Error. while updating user Try Again!");

		});

	};
});
app.filter('genderFilter', [function () {
    return function (customer) {
       if (customer.customerGender== "Male") {
          return   "Mr."+customer.customerName;
        }
        else {
           return  "Mrs."+customer.customerName;
        }   

    };
}]);
