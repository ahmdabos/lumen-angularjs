define(['./app'], function (app) {
    'use strict';
    return app.config(['$urlRouterProvider', '$stateProvider', function ($urlRouterProvider, $stateProvider) {
		$stateProvider
		.state('view1', {
			url: '/view1',
			templateUrl: 'views/view1.html'
		})
		.state('view2', {
			url: '/view2',
			templateUrl: 'views/view2.html'
		});
		$urlRouterProvider.otherwise('views/view1.html');

    }]);
});
