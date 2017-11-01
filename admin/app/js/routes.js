'use strict';
angular.module('app')
    .config(['$urlRouterProvider', '$stateProvider','$locationProvider', function ($urlRouterProvider, $stateProvider,$locationProvider) {
        $stateProvider
            .state('/', {
                url: '/',
                templateUrl: 'views/home.html',
                controller: 'HomeController as homeVm'
            })
            .state('login', {
                url: '/login',
                template: '<ui-view/>'
            })
            .state('login.index', {
                url: '/index',
                templateUrl: 'views/login/index.html',
                controller: 'LoginController as loginVm'
            })
            .state('logout', {
                url: '/logout',
                controller: 'LogoutController'
            })
            .state('articles', {
                url: '/articles',
                template: '<ui-view/>'
            })
            .state('articles.index', {
                url: '/index',
                templateUrl: 'views/articles/index.html',
                controller: 'ArticlesController as articleVm'
            })
            .state('articles.add', {
                url: '/add',
                templateUrl: 'views/articles/add.html',
                controller: 'AddArticleController as addArticleVm'
            })
            .state('articles.edit', {
                url: '/edit/:id',
                templateUrl: 'views/articles/edit.html',
                controller: 'EditArticleController as editArticleVm'
            });
        $urlRouterProvider.otherwise('views/home.html');
       /* $locationProvider.html5Mode(true);
        $locationProvider.hashPrefix = '!';*/
    }]);

