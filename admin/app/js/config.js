'use strict';
angular.module('app')
    .constant('URL', {
        baseApi: 'http://localhost:8000/api/',
        articleApi: 'articles',
        uploadApi: 'uploads',
        authenticationsApi: 'apiauthentications'
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