angular.module('hoh', ['ngCookies'])
.controller('UserCtrl', ['$scope', '$cookies', '$cookieStore', '$http', function($scope, $cookies, $cookieStore, $http) {
  $scope.formData = {};
  $scope.formData.user = $cookies.getObject('user').user;
  $scope.username = $scope.formData.user.first_name;
  // console.log($scope.formData.user);

  $scope.submitUser = function(){
    $http.put("/v1/users.json?token=" + $cookies.getObject('user').access_token, {first_name: 'charlie'})
      .success(function(data, status) {
        console.log($scope.email);
        $scope.new_profile = {access_token: $cookies.getObject('user').access_token, user: data};
        console.log($scope.new_profile);
      })
      .error(function(data, status, headers, config) {
        console.log("error");
      })
      .then(function(data) {
        console.log("then");
      });
    console.log("Submit");
  }
}]);
