app.controller('MembersController', ['$scope', '$http', function($scope, $http) {
     $http.get("/v1/users/leden.json")
          .then(function onSuccess(response) {
               // Handle success
               if (response.status == 200) {
                    $scope.formData = {};
                    $scope.formData.items = response.data;
               } else {
                    var status = response.status;
                    var statusText = response.statusText;
                    $scope.messages_error = status + " " + statusText;
               }
          }).catch(function onError(response) {
               // Handle error
               var status = response.status;
               var statusText = response.statusText;
               $scope.messages_error = status + " " + statusText;
          })
}]);
