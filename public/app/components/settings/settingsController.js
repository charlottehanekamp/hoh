angular.module('hoh', ['ngCookies'])
.controller('SettingCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){
  $scope.username = $cookies.getObject('user').user.first_name;
}]);
