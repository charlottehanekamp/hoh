angular.module('hoh', ['ngCookies'])
.controller('LoginCtrl', ['$scope', '$http', '$location', '$cookies', function($scope, $http, $location, $cookies){
  console.log("test");
  $scope.loginUser = function(){
    if(!$scope.email || $scope.email === '') { return; }
    $cookies.put('token', '1234');

    // $http.post("/v1/auth.json?email=" + $scope.email + "&password=" + $scope.password)
    //   .success(function(data, status) {
    //       if(status == 201){
    //           console.log(data.access_token);
    //           $cookies.put('token', data.access_token);
    //           // console.log($cookies.get('token'));
    //
    window.location.href = "/pages/after.html";
    //
    //       }else {
    //           $scope.messages = 'Oops, we received your request, but there was an error processing it.';
    //       }
    //   })
    //   .error(function(data, status, headers, config) {
    //       $scope.messages = 'Email of wachtwoord is incorrect!';
    //   });
  };
}]);
