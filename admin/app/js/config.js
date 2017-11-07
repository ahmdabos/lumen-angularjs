'use strict';
angular.module('app')
    .constant('URL', {
        baseUrl: 'http://localhost/lumen-angularjs/admin/#!/',
        baseApi: 'http://localhost/lumen-angularjs/api/public/',
        articleApi: 'articles',
        uploadApi: 'uploads',
        authenticationsApi: 'oauth/token',
        revokeAccess:'oauth/tokens',

    })
    .constant('Config', {
        limitOptions: [10, 25, 50, 100],
        sortBy: 'publishedAt',
        limit: 25,
        sortReverse: true
    })
    .config(['URL', 'OAuthProvider', 'OAuthTokenProvider', function (URL, OAuthProvider, OAuthTokenProvider) {
        OAuthProvider.configure({
            baseUrl: URL.baseApi,
            clientId: '2',
            clientSecret: 'seVBvcbsiXokBbSR25J3K9h3CD16qti8sDx82AaF',
            grantPath:URL.authenticationsApi,
            revokePath:URL.revokeAccess+'/083cf3c3ea553b6c8b23897a563c8192004f7a21094c6d2cb2dc06eb9649c018dab9980159e0c2dd'
        });
        OAuthTokenProvider.configure({
            name: 'token',
            options: {
                secure: false // true if https
            }
        });
    }])
    .run(['$rootScope', '$window', 'OAuth', 'URL', function ($rootScope, $window, OAuth, URL) {
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
            return $window.location.href = URL.baseUrl + 'login/index?error_reason=' + rejection.data.error;
        });
    }])
    .value('_', window._);