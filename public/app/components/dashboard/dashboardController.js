angular.module('hoh', ['ngCookies'])
.controller('DashboardCtrl', ['$scope', '$cookies', '$cookieStore', '$http', function($scope, $cookies, $cookieStore, $http) {
  console.log($cookies.getObject('user'));
  // $scope.username = $cookies.get('token');
  $http.get("/v1/users.json?token=" + $cookies.getObject('user').access_token )
    .success(function(data, status) {
      if(status == 200){
        $scope.formData = data
        // console.log($scope.formData);
      }else {
        $scope.messages = 'Oops, we received your request, but there was an error processing it.';
      }
    })
    .error(function(data, status, headers, config) {
      $scope.messages = 'Email of wachtwoord is incorrect!';
    }).then(function(data) {
      console.log(data.data.first_name);
      $cookies.put('username', data.data.first_name, {'path': '/'} );
      // $cookies.get('username');
    });
    $scope.username = $cookies.getObject('user').user.first_name;
}]);
