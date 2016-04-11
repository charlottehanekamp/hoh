angular.module('hoh', [])
.controller('NieuwsCtrl', ['$scope', '$http', function($scope, $http){
  $http.get("/v1/rates.json")
    .success(function(data, status) {
        if(status == 200){
            console.log("succes");
        }else {
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
        $scope.test="successs";
        $scope.formData = {};
        $scope.formData.items = data;

    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    });
}]);
