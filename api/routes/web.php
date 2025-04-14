<?php

/** @var \Laravel\Lumen\Routing\Router $router */

// Root route that welcomes users to the API
$router->get('/', function () use ($router) {
    return response()->json([
        'message' => 'Welcome to Taste of Africa API', 
        'status' => 'online',
        'endpoints' => [
            'GET /foods' => 'List all foods',
            'GET /foods/{id}' => 'Get specific food details'
        ]
    ]);
});

// Health check route
$router->get('/health', function () {
    return response()->json([
        'status' => 'ok', 
        'message' => 'API is running'
    ]);
});

// Food routes
$router->group(['prefix' => 'foods'], function () use ($router) {
    $router->get('/', 'FoodController@index');
    $router->get('/{id}', 'FoodController@show');
});