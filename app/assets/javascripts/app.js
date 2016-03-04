var app = angular.module('poketeam',['templates', 'ngRoute', 'controllers',]);


app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
  //define routes
  $routeProvider
  .when('/', {
    templateUrl: 'index.html',
    controller: 'PkmnCtrl'
  })
  .when('/team', {
  	templateUrl: 'team.html',
  	controller:'PkmnCtrl'
  })
  .when('/signup',{
    templateUrl: 'signup.html',
    controller: 'PkmnCtrl'
  }).when('/login', {
    templateUrl: 'login.html',
    controller: 'PkmnCtrl'
  });
  $locationProvider.html5Mode(false).hashPrefix('!');
}]);

controllers = angular.module('controllers',[])

controllers.controller('PkmnCtrl', ['$scope', function($scope) {

}]);