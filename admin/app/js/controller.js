'use strict';
angular.module('app')
//Login Controller
    .controller('LoginController', ['$scope', '$http', '$log', '$state', '$cookies', 'AuthService', 'URL', 'LoaderService', 'ToastService', 'OAuth', function ($scope, $http, $log, $state, $cookies, AuthService, URL, LoaderService, ToastService, OAuth) {
        $scope.submit = function () {
            LoaderService.show();
            var data = {
                username: $scope.username,
                password: $scope.password
            };
            OAuth.getAccessToken(data, {}).then(function () {
                LoaderService.hide();
                ToastService.show('successfully logged in');
                $state.go('/');
            }, function () {
                LoaderService.hide();
                ToastService.show('Failed to login');
            });

        };
    }])
    //Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URL', 'Config', 'ArticlesService', 'PagerService', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, URL, Config, ArticlesService, PagerService, LoaderService, ToastService) {
        LoaderService.show();
        ArticlesService.getArticles(URL.baseApi + URL.posts)
            .then(function (res) {
                LoaderService.hide();
                $scope.articles = res.data;
                $log.debug($scope.articles);
            }, function (err) {
                LoaderService.hide();
                $log.debug(err);
            });
    }])
    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
        $scope.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        $scope.date = $filter('date')(new Date(), 'yyyy-MM-dd hh:mm:ss');
        $scope.submit = function () {
            LoaderService.show();
            var data = {
                title: $scope.title,
                content: $scope.content,
                publishedAt: $scope.date
            };
            ArticlesService.postArticle(URL.baseApi + URL.posts, data)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('Added successfully');
                    $log.debug(res);
                    $state.go('articles.index');
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });

        };
    }])
    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $stateParams, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
        LoaderService.show();
        var id = $stateParams.id;
        ArticlesService.getArticle(URL.baseApi + URL.posts + '/' + id)
            .then(function (res) {
                LoaderService.hide();
                var article = res.data;
                $scope.data = {
                    id: id,
                    title: article.title,
                    content: article.content
                };
                $log.debug('get article for edit', article);
            }, function (err) {
                LoaderService.hide();
                $log.debug(err);
            });
        $scope.submit = function () {
            LoaderService.show();
            ArticlesService.putArticle(URL.baseApi + URL.posts + '/' + id, $scope.data)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('Updated successfully');
                    $log.debug(res);
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });
        };
    }])
    //Logout Controller
    .controller('LogoutController', ['$scope', '$http', '$log', '$state', '$cookies', 'AuthService', 'URL', 'LoaderService', 'ToastService','OAuth', function ($scope, $http, $log, $state, $cookies, AuthService, URL, LoaderService, ToastService,OAuth) {
        LoaderService.show();
        OAuth.revokeToken().then(function(){
            LoaderService.hide();
            ToastService.show('You logged out');
            $state.go('login.index');
        },function () {
            LoaderService.hide();
            ToastService.show('Failed to logout');
        });

    }]);
