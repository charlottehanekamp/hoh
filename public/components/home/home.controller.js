app.controller('HomeController', ['$scope', '$http', function($scope, $http) {
     $http.get("/v1/default_text.json?page=index")
          .then(function onSuccess(response) {
               // Handle success
               if(response.status ==  200){
                    $scope.formData = response.data;
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
