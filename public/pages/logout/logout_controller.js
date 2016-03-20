angular.module('hoh', ['ngCookies'])
.controller('LogOutCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){
  var person = prompt("Do you want to log out? Yes/No", "Yes");
  if (person == "Yes") {
    window.location.href = "/pages/login/login.html";
    $http.delete("/v1/auth.json?token=" + $cookieStore.get('key') )
      .success(function(data, status) {
        if(status == 200){
          window.location.href = "/pages/login/login.html";
        }else {
          window.location.href = "/pages/after.html";
          $scope.messages = 'Oops, we received your request, but there was an error processing it.';
        }
      })
      .error(function(data, status, headers, config) {
        $scope.messages = 'Email of wachtwoord is incorrect!';
      });
  }
  else {
    window.location.href = "/pages/after.html";
  }
  console.log("logout");
}]);
