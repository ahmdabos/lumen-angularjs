angular.module('app', [
	'ui.router',
])
.constant('PrefixURL', {
    url: 'http://localhost/cing/restfull/restfull/'
})
.value('_', window._)
.config(function ($urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
});
