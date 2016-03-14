var app = angular.module('poketeam',[
  'templates', 
  'ngRoute', 
  'ngResource',
  'ngCookies', 
  'PokeCtrls', 
  'PokeServices'
]);


app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
  //define routes
  $routeProvider
  .when('/', {
    templateUrl: 'index.html',
    controller: 'MainCtrl'
  })
  .when('/team', {
  	templateUrl: 'team.html',
  	controller:'TeamCtrl'
  })
  .when('/signup',{
    templateUrl: 'signup.html',
    controller: 'MainCtrl'
  })
  .when('/login', {
    templateUrl: 'login.html',
    controller: 'MainCtrl'
  })
  .when('/team/:team_id/pokemon',{
    templateUrl:'addpokemon.html',
    controller: 'PkmnCtrl'
  });
  $locationProvider.html5Mode(false).hashPrefix('!');
}]);

app.run(['$rootScope', 'cookieService', function ($rootScope, cookieService) {  
    $rootScope.cookie = cookieService;
}]);

