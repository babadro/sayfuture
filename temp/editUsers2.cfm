<!DOCTYPE html>
<html>
<head>
	<cfinclude template="../include/bootstrapMeta.cfm" >
</head>

<body ng-app="myApp" ng-controller="myCtrl">
{{create}}
<h3>Варианты</h3>

<form name="variantsTable">
	<table>
	  <thead>
	    <tr>
	      <th></th>
	      <th>Заголовок</th>
	      <th>Описание</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr ng-repeat="variant in variants">
	      <td>
	        <button ng-click="editVariant(variants.indexOf(variant))">Edit</button>
	        <button ng-click="deleteVariant(variants.indexOf(variant))">Удалить</button>
	      </td>
	      <td>
	      	<input type="hidden" name="variantTitle" ng-model="variant.title"></input>
	      	{{ variant.title }}
	      </td>
	      <td>
	      	<input type="hidden" name="variantDescribe" ng-model="variant.describe"></input>
	      	{{ variant.describe }}
	      </td>	      
	    </tr>
	  </tbody>
	</table>
</form>

<hr>
<button ng-click="editVariant('new')">Create New User</button>
<hr>

<h3 ng-show="create">Create New Variant:</h3>
<h3 ng-show="edit">Edit Variant:</h3>

<form>
    <input type="text" ng-disabled="!(edit || create)" ng-model="title" placeholder="Название">
    
	<textarea ng-disabled="!(edit || create)" ng-model="describe" placeholder="Описание"></textarea>
		
	</textarea>
</form>

<button ng-disabled="false" ng-click="save()">Save Changes</button>


{{ title }}<br>
{{ describe }}
<cfinclude template="../include/angular.cfm" >
<script>
var app = angular.module("myApp", []);

app.controller("myCtrl", 

	function($scope) {
	$scope.title = 'df';
	$scope.describe = '';
	
	$scope.variants = [];
	
	$scope.create = false;
	$scope.edit = false;
	$scope.error = false;
	$scope.incomplete = false; 

	$scope.deleteVariant = function(position) {
	  $scope.variants.splice(position, 1)	
	};

	$scope.save = function() {
	  if ( $scope.create == true) {
	  	$scope.variants.push({title: $scope.title, describe: $scope.describe})
	  } else {
	  	$scope.variants[$scope.variantPos].title = $scope.title;
	  	$scope.variants[$scope.variantPos].describe = $scope.describe;
	  }	  
	  $scope.create = false;
	  $scope.edit = false;
	  $scope.title = '';
	  $scope.describe = ''; 	
	};

	$scope.editVariant = function(position) {
	  if (position == 'new') {
	    $scope.create = true;
	    $scope.edit = false;
	    $scope.incomplete = true;
	    $scope.title = '';
	    $scope.describe = '';
	    } else {
	    $scope.create = false;	
	    $scope.edit = true;
	    $scope.title = $scope.variants[position].title;
	    $scope.describe = $scope.variants[position].describe;
	  	$scope.variantPos = position;
	  }
	};
});

 


	
	





</script>

</body>
</html>
