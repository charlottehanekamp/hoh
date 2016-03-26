angular.module('hoh', ['ngCookies'])
.controller('DashboardCtrl', ['$scope', '$cookies', '$cookieStore', '$http', function($scope, $cookies, $cookieStore, $http) {
  $scope.username = $cookies.getObject('user').user.first_name;
}]);
