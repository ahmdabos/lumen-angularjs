'use strict';
angular.module('app')

// Data Service
    .factory('DataService', function (PrefixURL, $http, $q, _) {
            var newsUrl = PrefixURL.apiURL + 'apipressreleases';
            var slidersUrl = PrefixURL.apiURL + 'apisliders';
            var storiesUrl = PrefixURL.apiURL + 'apistories';
            var menusUrl = PrefixURL.apiURL + 'apimenus';
            var articles = [];
            var sliders = [];
            var stories = [];
            var menus = [];
            var service = {
                getArticles: getArticles,
                getArticle: getArticle,
                getSliders: getSliders,
                getStories: getStories,
                getMenus: getMenus
            };

            return service;
            function getArticles() {
                if (articles.length) {
                    return $q.when(articles);
                }

                return $http.get(newsUrl).then(function (response) {
                    articles = response.data;
                    return articles;
                });
            }

            function getSliders() {
                if (sliders.length) {
                    return $q.when(sliders);
                }

                return $http.get(slidersUrl).then(function (response) {
                    sliders = response.data;
                    return sliders;
                });
            }

            function getStories() {
                if (stories.length) {
                    return $q.when(stories);
                }

                return $http.get(storiesUrl).then(function (response) {
                    stories = response.data;
                    return stories;
                });
            }

            function getMenus() {
                if (menus.length) {
                    return $q.when(menus);
                }

                return $http.get(menusUrl).then(function (response) {
                    menus = response.data;
                    return menus;
                });
            }

            function getArticle(articleId) {
                return getArticles().then(function (articles) {
                    return _.find(articles, function (article) {
                        return article.guid == articleId;
                    });
                });
            }
        }
    )

    // News Serive
    .factory('newsService', ['DataService', function (DataService) {
        var service = {
            all: all,
            get: get
        };
        return service;

        function all() {
            return DataService.getArticles();
        }

        function get(articleId) {
            return DataService.getArticle(articleId);
        }
    }])

    // Sliders Serive
    .factory('slidersService', ['DataService', function (DataService) {
        var service = {
            all: all,
            get: get
        };
        return service;

        function all() {
            return DataService.getSliders();
        }

        function get(sliderId) {
            return DataService.getArticle(sliderId);
        }
    }])

    // Sliders Serive
    .factory('storiesService', ['DataService', function (DataService) {
        var service = {
            all: all,
            get: get
        };
        return service;

        function all() {
            return DataService.getStories();
        }

        function get(storyId) {
            return DataService.getStory(storyId);
        }
    }])

    // Menus Serive
    .factory('menusService', ['DataService', function (DataService) {
        var service = {
            all: all,
            get: get
        };
        return service;

        function all() {
            return DataService.getMenus();
        }

        function get(menuId) {
            return DataService.getMenu(menuId);
        }
    }]);

