<!doctype html>
<html ng-app>
<head>
<script type="text/javascript">
	function FruitsController($scope){
		$scope.name="Anonymous"
		$scope.fruits=['apple','mango','banana'];
		$scope.addFruit=function(){
			$scope.fruits.push($scope.newFruit);
		}
		$scope.delFruit=function(){
			$scope.fruits.push($scope.newFruit);
		}
	}	
</script>
</head>
<body>
<script type="text/javascript" src="../../lib/angular.min.js" ></script>
<div ng-controller="FruitsController">
	Enter Your Name : <input type="text" ng-model="name">
	Select a Fruit :  
        <select ng-model="selectedFruit" ng-options="fruit for fruit in fruits">
        </select>
	<hr/>
	List of Fruits : 
	<ul><li ng-repeat="fruit in fruits">{{fruit}}</li></ul>
	<hr />
	Name : {{name}}<br />
	Selected fruit : {{selectedFruit}}
	<hr />
	Add more fruits : 
        <input type="text" ng-model="newFruit">
        <button ng-click="addFruit()">Add</button>
</div>
</body>
</html>
