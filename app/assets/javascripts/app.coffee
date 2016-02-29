poketeam = angular.module('poketeam',['templates', 'ngRoute', 'controllers',]);

poketeam.config(['$routeProvider',
	($routeProvider)->
		$routeProvider
			.when('/',
				templateUrl: "index.html",
				controller: "PokemonController"
			);
])

controllers = angular.module('controllers',[])

controllers.controller("PokemonController", [ '$scope',
  ($scope)->
])