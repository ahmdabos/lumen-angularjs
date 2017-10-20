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
    .config(['URL','OAuthProvider', function (URL,OAuthProvider) {
        OAuthProvider.configure({
            baseUrl: URL.baseApi,
            clientId: 'id1',
            clientSecret: 'secret1',
            grantPath: URL.authenticationsApi,
            revokePath: URL.authenticationsApi
        });
    }])
    .run(['$rootScope', '$window', 'OAuth', function ($rootScope, $window, OAuth) {
        $rootScope.$on('oauth:error', function (event, rejection) {
            // Ignore `invalid_grant` error - should be catched on `LoginController`.
            if ('invalid_grant' === rejection.data.error) {
                return;
            }

            // Refresh token when a `invalid_token` error occurs.
            if ('invalid_token' === rejection.data.error) {
                return OAuth.getRefreshToken();
            }

            // Redirect to `/login` with the `error_reason`.
            return $window.location.href = '/login?error_reason=' + rejection.data.error;
        });
    }])
    .value('_', window._);