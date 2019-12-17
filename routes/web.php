<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/user/confirmation/{token}', 'Auth\RegisterController@confirmation')->name('confirmation');

Route::group(['middleware' => ['auth']], function() {
  	Route::get('/user/profile', 'UserController@profile')->name('profile');

	Route::post('/user/profile', 'UserController@updateProfile')->name('updateprofile');

	Route::get('users', 'UserController@index');
});

