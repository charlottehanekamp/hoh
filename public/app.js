angular.module('hoh', ['ngCookies'])

     .controller('MainCtrl', ['$scope', '$http', '$cookies', '$cookieStore', function($scope, $http, $cookies, $cookieStore) {
          $scope.formData = {
               'titles':null,
               'image': {'url': null},
               'content_one':null,
               'content_two':null,
               'content_three':null,
               'content_four':null
          };
          // if ($cookieStore.get('title')) {
               // $scope.formData.titles = $cookieStore.get('title');
               // $scope.formData.image.url = $cookieStore.get('img');
               // $scope.formData.content_one = $cookieStore.get('default_text1');
               // $scope.formData.content_two = $cookieStore.get('default_text2');
               // $scope.formData.content_three = $cookieStore.get('default_text3');
               // $scope.formData.content_four = $cookieStore.get('default_text4');
          // }else{
               $http.get("/v1/default_text.json?page=index")
                    .success(function(data, status) {
                         if (status == 200) {
                              // console.log("succes");
                              // $scope.test = "successs";
                              // $cookieStore.put('titles', data.title);
                              // $cookieStore.put('img', data.image.url);
                              // $cookieStore.put('default_text1', data.content_one);
                              // $cookieStore.put('default_text2', data.content_two);
                              // $cookieStore.put('default_text3', data.content_three);
                              // $cookieStore.put('default_text4', data.content_four);
                              // alert("Cookie added");
                              // $cookies.default_text = data;
                              $scope.formData = data;
                              // console.log(data);
                         } else {
                              $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
                         }
                    })
                    .error(function(data, status, headers, config) {
                         $scope.messages_error = 'There was a network error. Try again later.';
                    });
          // }
     }]);
