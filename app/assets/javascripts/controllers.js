angular.module('PokeCtrls',['PokeServices'])
.controller('MainCtrl', [
	'$scope', 
	'$cookies', 
	'$window', 
	'$rootScope', 
	'$route', 
	'cookieService',
	function($scope, $cookies, $window, $rootScope, $route, cookieService) {
	  console.log($cookies.get("XSRF-TOKEN"));
	  $rootScope.xsrfToken = $cookies.get("XSRF-TOKEN")
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
	'$http',
	'$route',
	function($scope, $cookies, $rootScope,cookieService, teamService, kantoPokedex, $http, $route){
	  $scope.teams=[];

	  $scope.deleteTeam = function(index){
	  	var req = "/team/"+ index;
			$http.delete(req).then(function success(res) {
		    //do something with the response if successful
		    console.log("It succeeded!");
		    $route.reload();
		  }, function error(res) {
		    //do something if the response has an error
		    $route.reload();
		  });
		}


		$rootScope.currentUser = $cookies.get("user_id");

		var updateToken = function(){
			$rootScope.xsrfToken = $cookies.get("XSRF-TOKEN");
		}

		updateToken();

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
	'$rootScope',
	'$cookies',
	function($scope, $routeParams, kantoPokedex, $http, $rootScope, $cookies){
		$scope.pokemon = [];

		var updateToken = function(){
			$rootScope.xsrfToken = $cookies.get("XSRF-TOKEN");
		}
		updateToken();


		kantoPokedex.query(function success(data){
			$scope.pokemon = data;
		})
		$scope.params = $routeParams;
	}
]);
