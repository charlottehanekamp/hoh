angular.module('hoh', ['ngCookies'])
.controller('LogOutCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){

  var person = prompt("Do you want to log out? Yes/No", "Yes");
  if (person == "Yes") {
    console.log("logout");
    $cookies.remove('user');
    window.location.href = "/app/default/login/loginView.html";
  }
  else {
    console.log("dont");
    window.location.href = "/app/components/dashboard/dashboardView.html";
  }
}]);
