angular.module('hoh', ['ngCookies', 'zingchart-angularjs'])
.controller('StatitiekenCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore',  function($scope, $http, $location, $cookies, $cookieStore){
  $scope.username = $cookies.getObject('user').user.first_name;
  $http.get("/v1/ladder_competities/average.json?token="+ $cookies.getObject('user').access_token)
    .success(function(data, status) {
        if(status != 200){
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    })
    .then(function(data){
      console.log(data.data);

      $scope.myJson = {
        type : 'bar' ,
        title: {
          "text":"Gemiddelde scores Ladder competitie"
        },
        "scale-x":{
          "values": ['totaal', 'pijlen geschoten', 'pijlen raak']    /* Or individual min/max/step attributes */
        },
        series : [
          {"values":[data.data.average_total, data.data.average_arrows_shot, data.data.average_arrows_hit], "text":"Bender"},
        ]
      };
    });

}])

.controller('Statitieken1Ctrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore',  function($scope, $http, $location, $cookies, $cookieStore){
  $scope.username = $cookies.getObject('user').user.first_name;
  $http.get("/v1/ladder_competities/stats.json?token="+ $cookies.getObject('user').access_token)
    .success(function(data, status) {
        if(status != 200){
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    })
    .then(function(data){
      console.log(data.data);
      var ladder_competities = {
        "gui":{
            "context-menu":{
                "button":{
                    "visible":0
                    }
                },
            "behaviors":[
                {
                    "id":"DownloadPDF",
                    "enabled":"none"
                },
                {
                    "id":"CrosshairHide",
                    "enabled":"all"
                }
            ]
        },
        "graphset":[
            {
                "crosshair-x":{},
        "type":"line",
        "scale-y":{
          "label": {
            "text": "Totaal aantal"
          }
        },
        "scale-x": {
          "label":{
            "text":"Gemiddeldes van alle ladder competities per keer",
            },
          "labels":data.data.average_shot_at
        },
        "legend":{
            "item":{
                "font-color":"blue",
                "font-size":11,
                "font-family":"courier new"
            }
        },
      	"series":[
          {"values":data.data.average_total, "text":"Totaal"},
          {"values":data.data.average_arrows_shot, "text":"Pijlen geschoten"},
          {"values":data.data.average_arrows_hit, "text":"Pijlen geraakt"}
      	]

              }
          ]
      };
      zingchart.render({
      	id : 'ladder_competities',
      	data : ladder_competities,
      	height: "100%",
      	width: "100%"
      });
    });

}]);
