angular.module('hoh', ['ngCookies'])
.controller('StatitiekenCtrl', ['$scope', '$http', '$location', '$cookies', '$cookieStore',  function($scope, $http, $location, $cookies, $cookieStore){
  $scope.username = $cookies.getObject('user').user.first_name;
  $http.get("/v1/ladder_competities/average.json?token="+ $cookies.getObject('user').access_token)
    .success(function(data, status) {
        if(status != 200){
            $scope.messages_error = 'Oops, we received your request, but there was an error processing it.';
        }
        $scope.competities = data; // get data from json
        var shot = data.average_arrows_shot
        var hit = data.average_arrows_hit
        var total = data.average_total
        var chart = AmCharts.makeChart("chartdiv",
        {
        	"type": "serial",
        	"categoryField": "category",
        	"startDuration": 1,
        	"theme": "light",
        	"categoryAxis": {
        		"gridPosition": "start"
        	},
        	"trendLines": [],
        	"graphs": [
        		{
        			"balloonText": "<span style='font-size:13px;'>[[category]]: <b>[[value]]</b></span>",
        			"bulletOffset": 16,
        			"bulletSize": 34,
        			"colorField": "color",
        			"cornerRadiusTop": 8,
        			"customBulletField": "bullet",
        			"fillAlphas": 1,
        			"id": "AmGraph-1",
        			"labelText": "[[value]]",
        			"lineAlpha": 0,
        			"title": "graph 1",
        			"type": "column",
        			"valueField": "points"
        		}
        	],
        	"guides": [],
        	"valueAxes": [
        		{
        			"id": "ValueAxis-1",
        			"title": "Score"
        		}
        	],
        	"allLabels": [],
        	"balloon": {},
        	"legend": {
        		"enabled": false,
        		"useGraphSettings": true
        	},
        	"titles": [
        		{
        			"id": "Title-1",
        			"size": 15,
        			"text": "Average score"
        		}
        	],
        	"dataProvider": [
        		{
        			"category": "Arrows Shot",
        			"points": 12,
        			"color": "#7F8DA9"
        		},
        		{
        			"category": "Arrows Hit",
        			"points": 33,
        			"color": "#FEC514"
        		},
        		{
        			"category": "Total points",
        			"points": 23,
        			"color": "#DB4C3C"
        		}
        	]
        });


        // console.log(comp.average_total);

    })
    .error(function(data, status, headers, config) {
        $scope.messages_error = 'There was a network error. Try again later.';
    });

}]);