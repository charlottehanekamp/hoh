angular.module('hoh', ['ngCookies'])
.controller('LoginCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){
  $scope.loginUser = function(){
    // $cookieStore.put('token', 'token');
    if(!$scope.email || $scope.email === '') { return; }

    $http.post("/v1/auth.json?email=" + $scope.email + "&password=" + $scope.password)
      .success(function(data, status) {
        if(status == 201){
          // $cookieStore.put('myFavorite','oatmeal');
          // window.location.href = "/app/components/dashboard/dashboardView.html";
        }else{
          $scope.messages = 'Oops, we received your request, but there was an error processing it.';
        }
      })
      .error(function(data, status, headers, config) {
          $scope.messages = 'Email of wachtwoord is incorrect!';
      })
      .then(function(data) {
        console.log(data.data.access_token);
        $cookies.putObject('user', data.data, {'path': '/'} );
        $cookies.getObject('user');

        window.location.href = "/app/components/dashboard/dashboardView.html";
      });
  };

}]);
