var app = angular.module('myapp', []);

app.controller('mycntrl',function ($scope, $http){
	
	$http.get('http://localhost:8081/EventTracker/events.json').
		success(function(data){
			$scope.events = data;
		});
	
});