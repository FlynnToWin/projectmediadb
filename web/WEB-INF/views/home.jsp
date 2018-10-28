<!DOCTYPE html>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<!--Custom made css for ProjectMediaDB -->
		<link rel="stylesheet" type="text/css" href="css/custom.css">
	
		<title>ProjectMediaDB</title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="navbar">
				<div class="col-sm-2">
					<a href="#home" height="25"><img src="pmdb2.png" width="75" height="30"></a>
				</div>
				<div class="col-sm-4">
					<div ng-app="ngrepeatSelect" ng-controller="tableController">
						<form name="myForm">
						<select name="repeatSelect" 
								id="repeatSelect" 
								ng-init="repeatSelect = data[0].name" 
								ng-model="repeatSelect" 
								ng-options="option.name as option.name for option in data"
								ng-change="chooseTable()">
						</select>
						</form>
					</div>
				</div>
				<div class="col-sm-6">
					<img src="projectmediadb4.png" alt="ProjectMediaDB" width="200" height="50" align="right">
				</div>
			</div>
			<div class="col-*-*">
				<br>
				<h2>Welcome to Project MediaDB</h2>
				<h3>SQL Engine designed for UMUC CMSC 495 Fall 2018 class project</h3>
				<h4>Created by Ryan Flynn, Brandon Galde, and Yodit Emiru</h4>
				<br>
				<br>
				<div>{{data.link}}</div>
			</div>
		</div>
		<script>		
			var tables = angular.module('ngrepeatSelect', []);
			tables.controller('tableController', function($scope){
				$scope.data = [{name: "Table to Query"}, 
						   {name: "Games",
							link: "#games"}, 
						   {name: "Video",
							link: "#video"}, 
						   {name: "Music",
							link: "#music"}, 
						   {name: "Pictures",
							link: "#pictures"}, 
						   {name: "Books",
							link: "#books"}];
			   
				$scope.queryTable = $scope.data[0].name;
			});
			function chooseTable(){
				
			}

		
		</script>
	
	</body>
</html>