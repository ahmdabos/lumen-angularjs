'use strict';
angular.module('app')
// Data Service
    .factory('DataService', ['$http', '$q', function ($http, $q) {
        return {
            getOne: function (url, id) {
                var deferred = $q.defer();
                return $http({
                    url: url,
                    method: "GET",
                    params: {id: id}
                })
                    .then(function (response) {
                        deferred.resolve(response);
                        return deferred.promise;
                    }, function (response) {
                        deferred.reject(response);
                        return deferred.promise;
                    });
            },
            getAll: function (url) {
                var deferred = $q.defer();
                return $http({
                    url: url,
                    method: "GET"
                }).then(function (response) {
                    deferred.resolve(response);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });
            },
            post: function (url, data) {
                var deferred = $q.defer();
                return $http({
                    method: 'POST',
                    url: url,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                    data: data,
                    transformRequest: function (obj) {
                        var p, str;
                        str = [];
                        for (p in obj) {
                            str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]));
                        }
                        return str.join('&');
                    }
                }).then(function (response) {
                    deferred.resolve(response.data);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });

            },
            put: function (url, data) {
                var deferred = $q.defer();
                return $http({
                    method: 'PUT',
                    url: url,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                    data: data,
                    transformRequest: function (obj) {
                        var p, str;
                        str = [];
                        for (p in obj) {
                            str.push(encodeURIComponent(p) + '=' + encodeURIComponent(obj[p]));
                        }
                        return str.join('&');
                    }
                }).then(function (response) {
                    deferred.resolve(response.data);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });
            },
            delete: function (url) {
                var deferred = $q.defer();
                return $http({
                    method: 'DELETE',
                    url: url
                }).then(function (response) {
                    deferred.resolve(response.data);
                    return deferred.promise;
                }, function (response) {
                    deferred.reject(response);
                    return deferred.promise;
                });

            }
        };
    }])
    // Authentications Service
    .factory('AuthService', ['DataService', function (DataService) {
        return {
            login: function login(url, data) {
                return DataService.post(url, data);
            }
        };
    }])
    // Article Service
    .factory('ArticlesService', ['DataService', function (DataService) {
        return {
            getArticle: function getArticle(url, id) {
                return DataService.getOne(url, id);
            },
            getArticles: function getArticles(url) {
                return DataService.getAll(url);
            },
            postArticle: function postArticle(url, data) {
                return DataService.post(url, data);
            },
            putArticle: function putArticle(url, data) {
                return DataService.put(url, data);
            },
            deleteArticle: function deleteArticle(url) {
                return DataService.delete(url);
            }
        };
    }])
    // Pager Service
    .factory('PagerService', function () {
        return {
            getPager: function getPager(totalItems, currentPage, pageSize) {
                // default to first page
                currentPage = currentPage || 1;

                // default page size is 10
                pageSize = pageSize || 10;

                // calculate total pages
                var totalPages = Math.ceil(totalItems / pageSize);

                var startPage, endPage;
                if (totalPages <= 10) {
                    // less than 10 total pages so show all
                    startPage = 1;
                    endPage = totalPages;
                } else {
                    // more than 10 total pages so calculate start and end pages
                    if (currentPage <= 6) {
                        startPage = 1;
                        endPage = 10;
                    } else if (currentPage + 4 >= totalPages) {
                        startPage = totalPages - 9;
                        endPage = totalPages;
                    } else {
                        startPage = currentPage - 5;
                        endPage = currentPage + 4;
                    }
                }

                // calculate start and end item indexes
                var startIndex = (currentPage - 1) * pageSize;
                var endIndex = Math.min(startIndex + pageSize - 1, totalItems - 1);

                // create an array of pages to ng-repeat in the pager control
                var pages = _.range(startPage, endPage + 1);

                // return object with all pager properties required by the view
                return {
                    totalItems: totalItems,
                    currentPage: currentPage,
                    pageSize: pageSize,
                    totalPages: totalPages,
                    startPage: startPage,
                    endPage: endPage,
                    startIndex: startIndex,
                    endIndex: endIndex,
                    pages: pages
                };
            }
        };
    })
    // Loader Service
    .factory('LoaderService', function () {
        return {
            show: function showLoader() {
                angular.element(document.querySelector('body')).addClass('loader');
            },
            hide: function hideLoader() {
                angular.element(document.querySelector('body')).removeClass('loader');
            }
        };
    })
    // Toast Service
    .factory('ToastService', ['$timeout', function ($timeout) {
        return {
            show: function showLoader(text) {
                angular.element(document.querySelector('body')).prepend('<div class="toaster">' + text + '</div>');
                $timeout(function () {
                    angular.element(document.querySelector('.toaster')).remove();
                }, 2000)
            }
        };
    }])
    // HttpRequestInterceptor Service
    .factory('HttpRequestInterceptorService', ['$cookies', function ($cookies) {
        return {
            request: function (config) {
                if ($cookies.get('currentUser')) {
                    var currentUser = JSON.parse($cookies.get('currentUser'));
                    var token = currentUser.token;
                    config.headers['Authorization'] = 'bearer ' + token;
                    config.headers['Accept'] = 'application/json;odata=verbose';
                }

                return config;
            }
        };
    }]);
