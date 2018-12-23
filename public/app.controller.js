var app = angular.module('myApp', ["ngRoute"]);
app.config(function($routeProvider) {
     $routeProvider
          .when("/home", {
               templateUrl: "components/home/home.view.htm",
               controller: 'HomeController'
          })
          .when("/nieuws", {
               templateUrl: "components/nieuws/nieuws.view.htm",
               controller: 'NieuwsController'
          })
          .when("/agenda", {
               templateUrl: "components/agenda/agenda.view.htm",
               controller: 'AgendaController'
          })
          .when("/bestuur", {
               templateUrl: "components/bestuur/bestuur.view.htm",
               controller: 'BestuurController'
          })
          .when("/members", {
               templateUrl: "components/members/members.view.htm",
               controller: 'MembersController'
          })
          .when("/trainingen", {
               templateUrl: "components/training/training.view.htm",
               controller: 'TrainingController'
          })
          .when("/materialen", {
               templateUrl: "components/materiaal/materiaal.view.htm",
               controller: 'MateriaalController'
          })
          .when("/tarief", {
               templateUrl: "components/tarief/tarief.view.htm",
               controller: 'TariefController'
          })
          .when("/locaties", {
               templateUrl: "components/locaties/locaties.view.htm",
               controller: 'LocatiesController'
          })
          .when("/contact", {
               templateUrl: "components/contact/contact.view.htm",
               controller: 'ContactController'
          })
          .when("/404", {
               templateUrl: '404.htm',
          })
          .when("/422", {
               templateUrl: '422.htm',
          })
          .when("/500", {
               templateUrl: '500.htm',
          })
          .otherwise({
               redirectTo: '/home'
          });
});
