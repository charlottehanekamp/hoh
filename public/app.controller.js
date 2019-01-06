var app = angular.module('myApp', ["ngRoute"]);
app.config(function($routeProvider) {
     $routeProvider
          .when("/home", {
               templateUrl: "components/home/home.view.htm",
               controller: 'HomeController',
               css: 'components/home/home.style.css'
          })
          .when("/nieuws", {
               templateUrl: "components/nieuws/nieuws.view.htm",
               controller: 'NieuwsController',
               css: 'components/nieuws/nieuws.style.css'
          })
          .when("/agenda", {
               templateUrl: "components/agenda/agenda.view.htm",
               controller: 'AgendaController',
               css: 'components/agenda/agenda.style.css'
          })
          .when("/bestuur", {
               templateUrl: "components/bestuur/bestuur.view.htm",
               controller: 'BestuurController',
               css: 'components/bestuur/bestuur.style.css'
          })
          .when("/members", {
               templateUrl: "components/members/members.view.htm",
               controller: 'MembersController',
               css: 'components/members/members.style.css'
          })
          .when("/trainingen", {
               templateUrl: "components/training/training.view.htm",
               controller: 'TrainingController',
               css: 'components/training/training.style.css'
          })
          .when("/materialen", {
               templateUrl: "components/materiaal/materiaal.view.htm",
               controller: 'MateriaalController',
               css: 'components/materiaal/materiaal.style.css'
          })
          .when("/tarief", {
               templateUrl: "components/tarief/tarief.view.htm",
               controller: 'TariefController',
               css: 'components/tarief/tarief.style.css'
          })
          .when("/locaties", {
               templateUrl: "components/locaties/locaties.view.htm",
               controller: 'LocatiesController',
               css: 'components/locaties/locaties.style.css'
          })
          .when("/contact", {
               templateUrl: "components/contact/contact.view.htm",
               controller: 'ContactController',
               css: 'components/contact/contact.style.css'
          })
          .when("/404", {
               templateUrl: '404.htm'
          })
          .when("/422", {
               templateUrl: '422.htm'
          })
          .when("/500", {
               templateUrl: '500.htm'
          })
          .otherwise({
               redirectTo: '/home'
          });
});
app.directive('head', ['$rootScope','$compile',
    function($rootScope, $compile){
        return {
            restrict: 'E',
            link: function(scope, elem){
                var html = '<link rel="stylesheet" ng-repeat="(routeCtrl, cssUrl) in routeStyles" ng-href="{{cssUrl}}" />';
                elem.append($compile(html)(scope));
                scope.routeStyles = {};
                $rootScope.$on('$routeChangeStart', function (e, next, current) {
                    if(current && current.$$route && current.$$route.css){
                        if(!angular.isArray(current.$$route.css)){
                            current.$$route.css = [current.$$route.css];
                        }
                        angular.forEach(current.$$route.css, function(sheet){
                            delete scope.routeStyles[sheet];
                        });
                    }
                    if(next && next.$$route && next.$$route.css){
                        if(!angular.isArray(next.$$route.css)){
                            next.$$route.css = [next.$$route.css];
                        }
                        angular.forEach(next.$$route.css, function(sheet){
                            scope.routeStyles[sheet] = sheet;
                        });
                    }
                });
            }
        };
    }
]);
