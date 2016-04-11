angular.module('hoh', ['ngCookies'])

.controller('MainCtrl', ['$scope', '$http', function($scope, $http){
  $http.get("http://hoh-archery.herokuapp.com/v1/default_text.json?page=index")
    .success(function(data, status) {
        if(status == 200){
            console.log("succes");
            $scope.test="successs";
            $scope.formData = data;
            console.log(data);
        }else {
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    });
}]);
