angular.module('hoh', ['ngCookies'])
.controller('UserCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){
  $scope.username = $cookies.getObject('user').user.first_name;
}]);
