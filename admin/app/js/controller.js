'use strict';
angular.module('app')
//Main Controller
    .controller('MainController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'LoaderService', 'ToastService', 'OAuth', function ($scope, $http, $log, $state, $cookies, URL, LoaderService, ToastService, OAuth) {
        var vm = this;
        vm.main = 'mainCtrl';

    }])
    //Login Controller
    .controller('LoginController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'LoaderService', 'ToastService', 'OAuth', function ($scope, $http, $log, $state, $cookies, URL, LoaderService, ToastService, OAuth) {
        var vm = this;
        vm.submit = function () {
            LoaderService.show();
            var data = {
                username: vm.username,
                password: vm.password
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
    //Home Controller
    .controller('HomeController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'LoaderService', 'ToastService', 'OAuth', function ($scope, $http, $log, $state, $cookies, URL, LoaderService, ToastService, OAuth) {
        var vm = this;
        vm.home = 'home';

    }])
    //Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URL', 'Config', 'ArticlesService', 'PagerService', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, URL, Config, ArticlesService, PagerService, LoaderService, ToastService) {
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
            LoaderService.show();
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
                    LoaderService.hide();
                    $log.debug(res);
                    vm.articles = res.data.result;
                    vm.totalItems = res.data.length;
                    vm.pager = PagerService.getPager(vm.totalItems, page, limit);
                    vm.items = vm.articles.slice(vm.pager.startIndex, vm.pager.endIndex + 1);
                    $log.debug(vm.articles);
                }, function (err) {
                    LoaderService.hide();
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
                    LoaderService.hide();
                    ToastService.show('Deleted successfully');
                    $log.debug(res);
                    $state.reload();
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Something Went Wrong');
                    $log.debug(err);
                });
        };
        vm.goToEditArticles = function (id) {
            $state.go('articles.edit', {id: id});
        };
    }])
    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
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
                LoaderService.show();

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
                                    LoaderService.hide();
                                    ToastService.show('Added successfully');
                                    $log.debug(res);
                                    $state.go('articles.index');
                                }, function (err) {
                                    LoaderService.hide();
                                    ToastService.show('Something Went Wrong');
                                    $log.debug(err);
                                });
                        } else {
                            LoaderService.hide();
                            ToastService.show('could not upload attachment');
                        }
                    };
                }
                else if (vm.isAttachments === false) {
                    ArticlesService.postArticle(URL.baseApi + URL.articleApi, data)
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
                }
            }
        };
    }])
    //Edit Article Controller
    .controller('EditArticleController', ['$scope', '$http', '$state', '$log', '$stateParams', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $stateParams, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
        var vm = this;
        vm.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        LoaderService.show();
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
                LoaderService.hide();
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
                LoaderService.hide();
                $log.debug(err);
            });
        vm.onRemoveFileBeforeUpload = function () {
            vm.isAttachments = false;
            vm.data.image = '';
        };
        vm.submit = function () {
            LoaderService.show();
            if (vm.isAttachments === true) {
                uploader.uploadAll();
                uploader.onCompleteItem = function (fileItem, response, status, headers) {
                    if (response.status == 1) {
                        vm.data.image = response.fileNewName;
                        ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/' + id, vm.data)
                            .then(function (res) {
                                LoaderService.hide();
                                ToastService.show('Updated successfully');
                                $log.debug(res);
                            }, function (err) {
                                LoaderService.hide();
                                ToastService.show('Something Went Wrong');
                                $log.debug(err);
                            });
                    } else {
                        LoaderService.hide();
                        ToastService.show('could not upload attachment');
                    }
                };
            }
            else if (vm.isAttachments === false) {
                ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/' + id, vm.data)
                    .then(function (res) {
                        LoaderService.hide();
                        ToastService.show('Updated successfully');
                        $log.debug(res);
                    }, function (err) {
                        LoaderService.hide();
                        ToastService.show('Something Went Wrong');
                        $log.debug(err);
                    });
            }


        }
    }])
    //Logout Controller
    .controller('LogoutController', ['$scope', '$http', '$log', '$state', '$cookies', 'URL', 'LoaderService', 'ToastService', 'OAuth', function ($scope, $http, $log, $state, $cookies, URL, LoaderService, ToastService, OAuth) {
        LoaderService.show();
        OAuth.revokeToken().then(function () {
            LoaderService.hide();
            ToastService.show('You logged out');
            $state.go('login.index');
        }, function () {
            LoaderService.hide();
            ToastService.show('Failed to logout');
        });

    }]);
