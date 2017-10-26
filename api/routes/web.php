<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// Home page
$app->get('/', function () use ($app) {
    return $app->version();
});

// Articles
$app->get('/articles/{page}/{limit}[/{keyword}]', 'ArticleController@index');
$app->post('/articles', 'ArticleController@store');
$app->get('/articles/{article_id}', 'ArticleController@show');
$app->put('/articles/{article_id}', 'ArticleController@update');
$app->patch('/articles/{article_id}', 'ArticleController@update');
$app->delete('/articles/{article_id}', 'ArticleController@destroy');

// Users
$app->get('/users/', 'UserController@index');
$app->post('/users/', 'UserController@store');
$app->get('/users/{user_id}', 'UserController@show');
$app->put('/users/{user_id}', 'UserController@update');
$app->patch('/users/{user_id}', 'UserController@update');
$app->delete('/users/{user_id}', 'UserController@destroy');

// Comments
$app->get('/comments', 'CommentController@index');
$app->get('/comments/{comment_id}', 'CommentController@show');

// Comment(s) of a article
$app->get('/articles/{article_id}/comments', 'ArticleCommentController@index');
$app->post('/articles/{article_id}/comments', 'ArticleCommentController@store');
$app->put('/articles/{article_id}/comments/{comment_id}', 'ArticleCommentController@update');
$app->patch('/articles/{article_id}/comments/{comment_id}', 'ArticleCommentController@update');
$app->delete('/articles/{article_id}/comments/{comment_id}', 'ArticleCommentController@destroy');

//Upload files
$app->post('/uploads/', 'UploadController@uploadFile');

// Request an access token
$app->post('/oauth/access_token', function () use ($app) {
    return response()->json($app->make('oauth2-server.authorizer')->issueAccessToken());
});
