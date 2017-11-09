'use strict';
angular.module('app')
//Main Controller
    .controller('MainController', ['$scope', '$rootScope', '$log', 'OAuth', 'HelperService', function ($scope, $rootScope, $log, OAuth, HelperService) {
        var vm = this;
        $scope.isUserAuthenticated = function () {
            if (OAuth.isAuthenticated()) {
                $rootScope.userAuthenticated = true;
            }
            else {
                $rootScope.userAuthenticated = false;
                HelperService.transitionTo('login.index');
            }
        };
        $scope.isUserAuthenticated();
    }])
    //Login Controller
    .controller('LoginController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'HelperService', 'OAuth', function ($scope, $http, $log, $state, $cookies, URL, HelperService, OAuth) {
        var vm = this;
        vm.submit = function () {
            HelperService.showLoader();
            var data = {
                username: vm.username,
                password: vm.password
            };
            OAuth.getAccessToken(data, {}).then(function () {
                HelperService.hideLoader();
                $scope.isUserAuthenticated();
                HelperService.showToast('successfully logged in');
                HelperService.transitionTo('/');
            }, function () {
                HelperService.hideLoader();
                HelperService.showToast('Failed to login');
            });
        };
    }])
    //Home Controller
    .controller('HomeController', ['$scope', function ($scope) {
        $scope.isUserAuthenticated();
        var vm = this;
        vm.home = 'home';
    }])
    //Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URL', 'Config', 'ArticlesService', 'PagerService', 'HelperService','Name', function ($scope, $http, $log, $state, URL, Config, ArticlesService, PagerService, HelperService,Name) {
        $log.debug(Name);
        $scope.isUserAuthenticated();
        var vm = this;
        vm.articles = [];
        vm.pager = {};
        vm.limitOptions = Config.limitOptions;
        vm.sortBy = Config.sortBy;
        vm.limit = Config.limit;
        vm.sortReverse = Config.sortReverse;
        vm.setLimit = function (limit) {
            vm.limit = limit;
            vm.getArticles(1, limit, vm.searchKeyword);
        };
        vm.setSearch = function (searchKeyword) {
            vm.searchKeyword = searchKeyword;
            vm.getArticles(1, vm.limit, vm.searchKeyword);
        };
        vm.setPage = function (page) {
            vm.getArticles(page, vm.limit, vm.searchKeyword);
        };
        vm.setSortBy = function (sortBy) {
            vm.sortReverse = (vm.sortBy === sortBy) ? !vm.sortReverse : true;
            vm.sortBy = sortBy;
        };
        vm.getArticles = function (page, limit, keyword) {
            HelperService.showLoader();
            if (!page) {
                page = 1;
            }
            if (!limit) {
                limit = vm.limit;
            }
            if (!keyword) {
                keyword = '';
            }
            else {
                keyword = '/' + keyword;
            }
            ArticlesService.getArticles(URL.baseApi + URL.articleApi + '/' + page + '/' + limit + keyword)
                .then(function (res) {
                    HelperService.hideLoader();
                    $log.debug(res);
                    vm.articles = res.data.result;
                    vm.totalItems = res.data.length;
                    vm.pager = PagerService.getPager(vm.totalItems, page, limit);
                    vm.items = vm.articles.slice(vm.pager.startIndex, vm.pager.endIndex + 1);
                    $log.debug(vm.articles);
                }, function (err) {
                    HelperService.hideLoader();
                    $log.debug(err);
                });
            if (page < 1 || page > vm.pager.totalPages) {
                return;
            }
        };
        vm.getArticles(1, vm.limit, '');
        vm.deleteArticle = function (id) {
            ArticlesService.deleteArticle(URL.baseApi + URL.articleApi + '/' + id)
                .then(function (res) {
                    HelperService.hideLoader();
                    HelperService.showToast('Deleted successfully');
                    $log.debug(res);
                    $state.reload();
                }, function (err) {
                    HelperService.hideLoader();
                    HelperService.showToast('Something Went Wrong');
                    $log.debug(err);
                });
        };
        vm.goToEditArticles = function (id) {
            HelperService.transitionTo('articles.edit', {id: id});
        };
    }])
    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URL', 'ArticlesService', 'HelperService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URL, ArticlesService, HelperService, FileUploader) {
        var vm = this;
        vm.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        vm.date = $filter('date')(new Date(), 'yyyy-MM-dd hh:mm:ss');
        vm.isAttachments = false;
        var uploader = vm.uploader = new FileUploader({
            url: URL.baseApi + URL.uploadApi,
            queueLimit: 1
        });
        uploader.onAfterAddingFile = function (addedFileItems) {
            vm.isAttachments = true;
            if (addedFileItems.file.size > 2097152) {
                vm.isFileSizeError = true;
                addedFileItems.remove();
            } else {
                vm.isFileSizeError = false;
            }
            if (addedFileItems.file.type != 'image/jpeg' && addedFileItems.file.type != 'image/jpg' && addedFileItems.file.type != 'image/png') {
                vm.isFileTypeError = true;
                addedFileItems.remove();
            } else {
                vm.isFileTypeError = false;
            }
        };
        vm.onRemoveFileBeforeUpload = function () {
            vm.isAttachments = false;
        };

        vm.submit = function (form) {
            if (form.$valid && !vm.isFileTypeError && !vm.isFileSizeError) {
                HelperService.showLoader();

                var data = {
                    title: vm.title,
                    publishedAt: vm.date,
                    content: vm.content
                };
                if (vm.isAttachments === true) {
                    uploader.uploadAll();
                    uploader.onCompleteItem = function (fileItem, response, status, headers) {
                        if (response.status == 1) {
                            data.image = response.fileNewName;
                            ArticlesService.postArticle(URL.baseApi + URL.articleApi, data)
                                .then(function (res) {
                                    HelperService.hideLoader();
                                    HelperService.showToast('Added successfully');
                                    $log.debug(res);
                                    $state.go('articles.index');
                                }, function (err) {
                                    HelperService.hideLoader();
                                    HelperService.showToast('Something Went Wrong');
                                    $log.debug(err);
                                });
                        } else {
                            HelperService.hideLoader();
                            HelperService.showToast('could not upload attachment');
                        }
                    };
                }
                else if (vm.isAttachments === false) {
                    ArticlesService.postArticle(URL.baseApi + URL.articleApi, data)
                        .then(function (res) {
                            HelperService.hideLoader();
                            HelperService.showToast('Added successfully');
                            $log.debug(res);
                            $state.go('articles.index');
                        }, function (err) {
                            HelperService.hideLoader();
                            HelperService.showToast('Something Went Wrong');
                            $log.debug(err);
                        });
                }
            }
        };
    }])
    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', '$filter', 'URL', 'ArticlesService', 'HelperService', 'FileUploader', function ($scope, $http, $state, $log, $stateParams, $filter, URL, ArticlesService, HelperService, FileUploader) {
        HelperService.showLoader();
        var vm = this;
        vm.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        var id = $stateParams.id;
        vm.isAttachments = false;
        var uploader = vm.uploader = new FileUploader({
            url: URL.baseApi + URL.uploadApi,
            queueLimit: 1
        });
        uploader.onAfterAddingFile = function (addedFileItems) {
            vm.isAttachments = true;
            if (addedFileItems.file.size > 2097152) {
                vm.isFileSizeError = true;
                addedFileItems.remove();
            } else {
                vm.isFileSizeError = false;
            }
            if (addedFileItems.file.type != 'image/jpeg' && addedFileItems.file.type != 'image/jpg' && addedFileItems.file.type != 'image/png') {
                vm.isFileTypeError = true;
                addedFileItems.remove();
            } else {
                vm.isFileTypeError = false;
            }
        };
        ArticlesService.getArticle(URL.baseApi + URL.articleApi + '/' + id)
            .then(function (res) {
                HelperService.hideLoader();
                var article = res.data;
                vm.data = {
                    id: id,
                    title: article.title,
                    publishedAt: article.published_at,
                    content: article.content,
                    image: article.image
                };

                $log.debug('get article for edit', article);
            }, function (err) {
                HelperService.hideLoader();
                $log.debug(err);
            });
        vm.onRemoveFileBeforeUpload = function () {
            vm.isAttachments = false;
            vm.data.image = '';
        };
        vm.submit = function () {
            HelperService.showLoader();
            if (vm.isAttachments === true) {
                uploader.uploadAll();
                uploader.onCompleteItem = function (fileItem, response, status, headers) {
                    if (response.status == 1) {
                        vm.data.image = response.fileNewName;
                        ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/' + id, vm.data)
                            .then(function (res) {
                                HelperService.hideLoader();
                                HelperService.showToast('Updated successfully');
                                $log.debug(res);
                            }, function (err) {
                                HelperService.hideLoader();
                                HelperService.showToast('Something Went Wrong');
                                $log.debug(err);
                            });
                    } else {
                        HelperService.hideLoader();
                        HelperService.showToast('could not upload attachment');
                    }
                };
            }
            else if (vm.isAttachments === false) {
                ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/' + id, vm.data)
                    .then(function (res) {
                        HelperService.hideLoader();
                        HelperService.showToast('Updated successfully');
                        $log.debug(res);
                    }, function (err) {
                        HelperService.hideLoader();
                        HelperService.showToast('Something Went Wrong');
                        $log.debug(err);
                    });
            }


        }
    }])
    //Logout Controller
    .controller('LogoutController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'HelperService', function ($scope, $http, $log, $state, $cookies, URL, HelperService) {
        $cookies.remove('token');
        $scope.isUserAuthenticated();
        HelperService.transitionTo('login.index');
        HelperService.showToast('Logged out successfully');


    }]);
