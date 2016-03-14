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
	function($scope, $cookies, $rootScope,cookieService, teamService){
		$rootScope.currentUser = $cookies.get("user_id");
		$scope.userId = function(value){
			return (($rootScope.currentUser).indexOf(value.user_id) !== -1)
		}

	  $scope.teams=[];
	  teamService.query(function success(data){
	  	$scope.teams = data;
	  	console.log(data);
	  }, function error(data){
	  	console.log(data);
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
		$scope.pokeInfo = [];
		kantoPokedex.get(function success(data){
			$scope.pokemon = data.results;
			console.log($scope.pokemon);
			for(i = 0; i < $scope.pokemon.length; i++){
				$http.get($scope.pokemon[i].url).then(function success(res){
					console.log(res.data)
				}, function error(error){
					console.log(error);
				});
			}
		}, function error(data){
			console.log(data);
		})

	}
]);