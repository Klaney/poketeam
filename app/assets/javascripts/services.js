angular.module('PokeServices',[])
.factory('cookieService', ['$rootScope', '$cookies', '$route', '$location', function($rootScope, $cookies, $route, $location){
	var cookie = {
		init: function(){
			if(!$cookies.get('user_id')){
				this.isLoggedIn = false;
			} else {
				this.isLoggedIn = true;
			}
		},
		logout: function(){
			$cookies.remove("user_id");
			$location.path('/');
			$route.reload();
			this.isLoggedIn = false;
			console.log("logout clicked!")
		},
		login: function(){
			this.isLoggedIn = true;
		}
	}
	cookie.init();
	return cookie;
}])
.factory('teamService', ['$resource', function($resource){
	return $resource("/api/v1/teams");
}])
.factory('kantoPokedex', ['$resource', function($resource){
	return $resource(
		"/api/v1/pokedex/",
		{'query': {method:'GET', isArray: true}}
	);
}]);