<!DOCTYPE html>
<html ng-app="myapp">

<head>
<title>Hello Events Angular</title>

    <script src="https://code.angularjs.org/1.5.5/angular.min.js"></script>
<script src="./events.js"></script>
</head>

<body >

	<div ng-controller="mycntrl">

		I have {{events.length}} events!

		<ul class="events-container">
			<li ng-repeat="event in events"> {{event.name}} </li>
		</ul>
	</div>

</body>
</html>