angular.module('hoh', ['ngCookies'])
// .controller('LogOutCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore', function($scope, $http, $location, $cookies, $cookieStore){
//   var person = prompt("Do you want to log out? Yes/No", "No");
//   if (person == "Yes") {
//     window.location.href = "/pages/login/login.html";
//     $http.delete("/v1/auth.json?token=" + $cookieStore.get('key') )
//       .success(function(data, status) {
//         if(status == 200){
//           console.log($cookieStore.get('key'));
//           $cookieStore.remove('key');
//           console.log($cookieStore.get('key'));
//           window.location.href = "/pages/login/login.html";
//         }else {
//           window.location.href = "/pages/after.html";
//           $scope.messages = 'Oops, we received your request, but there was an error processing it.';
//         }
//       })
//       .error(function(data, status, headers, config) {
//         $scope.messages = 'Email of wachtwoord is incorrect!';
//       });
//   }
//   else {
//     window.location.href = "/pages/after.html";
//   }
//   console.log("logout");
// }])

.controller('MyController', ['$scope', '$cookies', '$cookieStore', function($scope, $cookies, $cookieStore) {
  // console.log($cookieStore.get('key'));
  // if($cookieStore.get('key')){
  //   console.log("Test");
  // }else{
  //   console.log("nkdnaskndkasnd")
  //   window.location.href = "/pages/login/login.html";
  // }
}]);
