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

Route::resource('trainers','TrainerController');
Route::resource('store','TrainerController');
/*
Route::get('/prueba','PruebaController@index');

Route::get('/name/{name}',function($name=null){

	return "Bienvenido: ".$name;

});


Route::get('/mi_primera_ruta',function(){
	return "oli";
});*/