<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CommentController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// public routes

    // register
    Route::post('/register', [UserController::class, 'register']); 

    // login route
    Route::post('/login', [UserController::class, 'login']); 



// protected routes
Route::group(['middleware' => ['auth:sanctum']], function() {

    // show other users' posts
    Route::get('/posts', [PostController::class, 'index']); 

    // show personal posts
    Route::get('/personalPosts', [PostController::class, 'showPersonalPosts']); 

    // add new post
    Route::post('/posts', [PostController::class, 'store']);

     // show single post
    Route::get('/posts/{id}', [PostController::class, 'show']);

    // Edit post
    Route::patch('/posts/{id}', [PostController::class, 'update']);

    // delete post
    Route::delete('/posts/{id}', [PostController::class, 'destroy']); 

    // add comment to post
    Route::post('post/{id}', [PostController::class, 'addNewComment']); 

    // delete comment
    Route::delete('/comments/{id}', [CommentController::class, 'destroy']); 
    
    // logout
    Route::post('/logout', [UserController::class, 'logout']); 

});



