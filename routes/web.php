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

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group([
    'prefix' => '/api/v1',
], function () use ($router) {
    $router->group(['prefix' => '/business',], function () use ($router) {
        $controller = 'BusinessController';
        $router->get('/', $controller.'@index');
        $router->post('/', $controller.'@create');
        $router->get('/{id:[\d]+}', [
            'as' => 'business.show',
            'uses' => $controller.'@show'
        ]);
        $router->put('/{id:[\d]+}', $controller.'@update');
        $router->delete('/{id:[\d]+}', $controller.'@delete');
    });

    $router->group(['prefix' => '/game',], function () use ($router) {
        $controller = 'GameController';
        $router->get('/', $controller.'@index');
        $router->post('/', $controller.'@create');
        $router->get('/{id:[\d]+}', [
            'as' => 'game.show',
            'uses' => $controller.'@show'
        ]);
        $router->put('/{id:[\d]+}', $controller.'@update');
        $router->delete('/{id:[\d]+}', $controller.'@delete');
    });

    $router->group(['prefix' => '/reservation',], function () use ($router) {
        $controller = 'ReservationController';
        $router->get('/', $controller.'@index');
        $router->post('/', $controller.'@create');
        $router->get('/{id:[\d]+}', [
            'as' => 'reservation.show',
            'uses' => $controller.'@show'
        ]);
        $router->put('/{id:[\d]+}', $controller.'@update');
        $router->delete('/{id:[\d]+}', $controller.'@delete');
    });

    $router->group(['prefix' => '/user',], function () use ($router) {
        $controller = 'UserController';
        $router->get('/login', $controller.'@login');
        $router->get('/', $controller.'@index');
        $router->post('/', $controller.'@create');
        $router->get('/{id:[\d]+}', [
            'as' => 'user.show',
            'uses' => $controller.'@show'
        ]);
        $router->put('/{id:[\d]+}', $controller.'@update');
        $router->delete('/{id:[\d]+}', $controller.'@delete');
    });
});