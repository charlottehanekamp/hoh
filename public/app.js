angular.module('hoh', ['ngCookies'])

.controller('MainCtrl', ['$scope', '$http', function($scope, $http){
}])

.controller('MyController', ['$scope', '$cookies', function($scope, $cookies) {
  console.log($cookies.get('token'));

}]);
