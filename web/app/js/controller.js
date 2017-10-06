'use strict';
angular.module('app')

//Home Controller
    .controller('HomeController', function ($scope, $state, $timeout, newsService, slidersService, storiesService, menusService) {
        $scope.vm = angular.extend(this, {
            articles: [],
            sliders: [],
            stories: [],
            menus: [],
            navigateToarticle: navigateToarticle
        });

        //News List
        newsService.all().then(function (data) {
            $scope.vm.articles = data;
        });

        //single news
        function navigateToarticle(articleId) {
            $state.go('app.article', {articleId: articleId});
        }

        //sliders list
        slidersService.all().then(function (data) {
            $scope.vm.sliders = data;
        });
        //stories list
        storiesService.all().then(function (data) {
            $scope.vm.stories = data;
        });
        menusService.all().then(function (data) {
            $scope.vm.menus = data;
            console.log($scope.vm.menus);
        });

    })

    //News Controller
    .controller('NewsController', function ($scope, $state, newsService) {
        var vm = angular.extend(this, {
            articles: [],
            navigate: navigate,
        });

        newsService.all().then(function (data) {
            vm.articles = data;
        });

        function navigate(articleId) {
            $state.go('app.article', {articleId: articleId});
        }

    });