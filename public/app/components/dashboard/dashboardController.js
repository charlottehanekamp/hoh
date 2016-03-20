angular.module('hoh', ['ngCookies'])
.controller('DashboardCtrl', ['$scope', '$cookies', function($scope, $cookies) {
  console.log($cookies.get('token'));
}])
