'use strict';
angular.module('app')
//Login Controller
    .controller('LoginController', ['$scope', '$http', '$log', '$state', '$cookies', 'AuthService', 'URL', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, $cookies, AuthService, URL, LoaderService, ToastService) {
        $scope.submit = function () {
            LoaderService.show();
            var data = {
                username: $scope.username,
                password: $scope.password
            };
            AuthService.login(URL.baseApi + URL.authenticationsApi, data)
                .then(function (res) {
                    LoaderService.hide();
                    ToastService.show('successfully logged in');
                    $cookies.putObject('currentUser', {username: $scope.username, token: res.token});
                    $state.go('/');
                    $log.debug(res);
                }, function (err) {
                    LoaderService.hide();
                    ToastService.show('Failed to login');
                    $log.debug(err);
                });
        };
    }])
    //Articles Controller
    .controller('ArticlesController', ['$scope', '$http', '$log', '$state', 'URL', 'Config', 'ArticlesService', 'PagerService', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, URL, Config, ArticlesService, PagerService, LoaderService, ToastService) {
        $scope.articles = [];
        $scope.pager = {};
        $scope.limitOptions = Config.limitOptions;
        $scope.sortBy = Config.sortBy;
        $scope.limit = Config.limit;
        $scope.sortReverse = Config.sortReverse;

        $scope.setLimit = function (limit) {
            $scope.limit = limit;
            $scope.getArticles(1, limit, $scope.searchKeyword);
        };
        $scope.setSearch = function (searchKeyword) {
            $scope.searchKeyword = searchKeyword;
            $scope.getArticles(1, $scope.limit, $scope.searchKeyword);
        };
        $scope.setPage = function (page) {
            $scope.getArticles(page, $scope.limit, $scope.searchKeyword);
        };
        $scope.setSortBy = function (sortBy) {
            $scope.sortReverse = ($scope.sortBy === sortBy) ? !$scope.sortReverse : false;
            $scope.sortBy = sortBy;
        };
        $scope.getArticles = function (page, limit, keyword) {
            LoaderService.show();
            if (!page) {
                page = 1;
            }
            if (!limit) {
                limit = $scope.limit;
            }
            if (!keyword) {
                keyword = '';
            }
            ArticlesService.getArticles(URL.baseApi + URL.articleApi + '/index/' + page + '/' + limit + '/' + keyword)
                .then(function (res) {
                    LoaderService.hide();
                    $scope.articles = res.data.result;
                    $scope.totalItems = res.data.length;
                    $scope.pager = PagerService.getPager($scope.totalItems, page, limit);
                    $scope.items = $scope.articles.slice($scope.pager.startIndex, $scope.pager.endIndex + 1);
                    $log.debug($scope.articles);
                }, function (err) {
                    LoaderService.hide();
                    $log.debug(err);
                });
            if (page < 1 || page > $scope.pager.totalPages) {
                return;
            }
        };
        $scope.getArticles(1, $scope.limit, '');
        $scope.deleteArticle = function (id) {
            ArticlesService.deleteArticle(URL.baseApi + URL.articleApi + '/delete/' + id)
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
        $scope.goToEditArticles = function (id) {
            $state.go('articles.edit', {id: id});
        };
    }])
    //Add Article Controller
    .controller('AddArticleController', ['$scope', '$http', '$state', '$log', '$filter', 'URL', 'ArticlesService', 'LoaderService', 'ToastService', 'FileUploader', function ($scope, $http, $state, $log, $filter, URL, ArticlesService, LoaderService, ToastService, FileUploader) {
        $scope.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        $scope.date = $filter('date')(new Date(), 'yyyy-MM-dd hh:mm:ss');
        $scope.isAttachments = false;
        var uploader = $scope.uploader = new FileUploader({
            url: URL.baseApi + URL.uploadApi,
            queueLimit: 1
        });
        uploader.onAfterAddingFile = function (addedFileItems) {

            $scope.isAttachments = true;
            if (addedFileItems.file.size > 2097152) {
                $scope.isFileSizeError = true;
                addedFileItems.remove();
            } else {
                $scope.isFileSizeError = false;
            }
            if (addedFileItems.file.type != 'image/jpeg' && addedFileItems.file.type != 'image/jpg' && addedFileItems.file.type != 'image/png') {
                $scope.isFileTypeError = true;
                addedFileItems.remove();
            } else {
                $scope.isFileTypeError = false;
            }
        };
        $scope.onRemoveFileBeforeUpload = function () {
            $scope.isAttachments = false;
        };

        $scope.submit = function () {
            if ($scope.form.$valid && !$scope.isFileTypeError && !$scope.isFileSizeError) {
                LoaderService.show();

                var data = {
                    title: $scope.title,
                    publishedAt: $scope.date,
                    content: $scope.content
                };
                if ($scope.isAttachments === true) {
                    uploader.uploadAll();
                    uploader.onCompleteItem = function (fileItem, response, status, headers) {
                        if (response.status == 1) {
                            data.image = response.fileNewName;
                            ArticlesService.postArticle(URL.baseApi + URL.articleApi + '/add', data)
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
                else if ($scope.isAttachments === false) {
                    ArticlesService.postArticle(URL.baseApi + URL.articleApi + '/add', data)
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
        $scope.dateTimePattern = /^([0-2][0-9]{3})-([0-1][0-9])-([0-3][0-9]) ([0-5][0-9]):([0-5][0-9]):([0-5][0-9])(([\-\+]([0-1][0-9])\:00))?/;
        LoaderService.show();
        var id = $stateParams.id;
        $scope.isAttachments = false;
        var uploader = $scope.uploader = new FileUploader({
            url: URL.baseApi + URL.uploadApi,
            queueLimit: 1
        });
        uploader.onAfterAddingFile = function (addedFileItems) {
            $scope.isAttachments = true;
            if (addedFileItems.file.size > 2097152) {
                $scope.isFileSizeError = true;
                addedFileItems.remove();
            } else {
                $scope.isFileSizeError = false;
            }
            if (addedFileItems.file.type != 'image/jpeg' && addedFileItems.file.type != 'image/jpg' && addedFileItems.file.type != 'image/png') {
                $scope.isFileTypeError = true;
                addedFileItems.remove();
            } else {
                $scope.isFileTypeError = false;
            }
        };
        ArticlesService.getArticle(URL.baseApi + URL.articleApi + '/view', id)
            .then(function (res) {
                LoaderService.hide();
                var article = res.data;
                $scope.data = {
                    id: id,
                    title: article.title,
                    publishedAt: article.publishedAt,
                    content: article.content,
                    image: article.image
                };

                $log.debug('get article for edit', article);
            }, function (err) {
                LoaderService.hide();
                $log.debug(err);
            });
        $scope.onRemoveFileBeforeUpload = function () {
            $scope.isAttachments = false;
            $scope.data.image = '';
        };
        $scope.submit = function () {
            LoaderService.show();
            if ($scope.isAttachments === true) {
                uploader.uploadAll();
                uploader.onCompleteItem = function (fileItem, response, status, headers) {
                    if (response.status == 1) {
                        $scope.data.image = response.fileNewName;
                        ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/edit', $scope.data)
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
            else if ($scope.isAttachments === false) {
                ArticlesService.putArticle(URL.baseApi + URL.articleApi + '/edit', $scope.data)
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
    .controller('LogoutController', ['$scope', '$http', '$log', '$state', '$cookies', 'AuthService', 'URL', 'LoaderService', 'ToastService', function ($scope, $http, $log, $state, $cookies, AuthService, URL, LoaderService, ToastService) {
        LoaderService.show();
        $cookies.remove('currentUser');
        $state.go('login.index');
        LoaderService.hide();
        ToastService.show('You logged out');
    }]);
