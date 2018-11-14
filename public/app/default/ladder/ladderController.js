angular.module('hoh', [])
.controller('LadderCtrl', ['$scope', '$http', function($scope, $http){
  $http.get("/v1/ladder_rankings.json")
    .success(function(data, status) {
        if(status == 200){
            console.log("succes");
        }else {
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
        $scope.test="successs";
        $scope.formData = {};
        $scope.formData.items = data;
        console.log($scope.formData.items)

    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    });
}]);
