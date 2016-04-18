var routerApp = angular.module('routerApp', ['ui.router']);

routerApp.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/home');

    $stateProvider

        // HOME STATES AND NESTED VIEWS ========================================
        .state('home', {
            url: '/home',
            templateUrl: 'partial-home.html',
            controller: "HomeController"
        })

        // ABOUT PAGE AND MULTIPLE NAMED VIEWS =================================
        .state('main', {
            url: '/main',
            templateUrl: 'app/default/main/main.html'
            controller: 'mainCtrl'
        });

});
