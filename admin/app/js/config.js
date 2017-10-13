'use strict';
angular.module('app')
    .constant('URL', {
        baseApi: 'http://localhost/lumen-angularjs/api/public/',
        articleApi: 'articles',
        uploadApi: 'uploads',
        authenticationsApi: 'oauth/access_token'
    })
    .constant('Config', {
        limitOptions: [10, 25, 50, 100],
        sortBy: 'createdAt',
        limit: 25,
        sortReverse: true
    })
    .config(function ($httpProvider) {
        return $httpProvider.interceptors.push('HttpRequestInterceptorService');
    })
    .value('_', window._);