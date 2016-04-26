angular.module('hoh', [])
.controller('GalleryCtrl', ['$scope', '$http', function($scope, $http){
  $http.get("/v1/gallery.json")
    .success(function(data, status) {
        if(status == 200){
            console.log("succes");
        }else {
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
        $scope.test="successs";
        $scope.formData = {};
        $scope.formData.gallery = data;
        console.log($scope.formData.gallery[0].pictures[0].image);

    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    })
    .then(function(data){

    });

    setTimeout(function() {
      console.log($('[id]'));
      $('[id]').each(function(){
          if (this.width > this.height) {
            console.log("landscape");
            $(this).addClass('landscape');
          }else if(this.width < this.height) {
            console.log("portrait");
            $(this).addClass('portrait');
          }
      });
    }, 1000);



}]);
