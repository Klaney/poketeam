angular.module('PokeCtrls',['PokeServices'])
.controller('MainCtrl', [
	'$scope', 
	'$cookies', 
	'$window', 
	'$rootScope', 
	'$route', 
	'cookieService',
	function($scope, $cookies, $window, $rootScope, $route, cookieService) {
	  console.log($cookies.get("user_id"));
	  $rootScope.currentUser = $cookies.get("user_id");
	}
])
.controller('TeamCtrl', [
	'$scope', 
	'$cookies', 
	'$rootScope',
	'cookieService', 
	'teamService',
	'kantoPokedex',
	function($scope, $cookies, $rootScope,cookieService, teamService, kantoPokedex){
	  $scope.teams=[];
	  $scope.teamPokemon=[];

		$rootScope.currentUser = $cookies.get("user_id");

		$scope.userId = function(value){
			return (($rootScope.currentUser).indexOf(value.user_id) !== -1)
		};

	  teamService.query(function success(data){
	  	$scope.teams = data;
	  	console.log(data);
	  }, function error(data){
	  	console.log(data);
	  });

	  kantoPokedex.query(function success(data){
			$scope.teamPokemon = data;
		});
	}
])
.controller('PkmnCtrl', [
	'$scope',
	'$routeParams',
	'kantoPokedex',
	'$http',
	function($scope, $routeParams, kantoPokedex, $http){
		$scope.pokemon = [];
		kantoPokedex.query(function success(data){
			$scope.pokemon = data;
		})
		$scope.params = $routeParams;
	}
]);