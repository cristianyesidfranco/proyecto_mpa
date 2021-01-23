<?php

use Illuminate\Support\Facades\Route;

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

Route::redirect('/', 'catalogo');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('catalogo', 'web\PageController@catalogo')->name('catalogo');


Route::middleware(['auth'])->group(function(){
    //roles
    Route::post('roles/store','Admin\RoleController@store')->name('roles.store')
        ->middleware('permission:roles.create');

    Route::get('roles','Admin\RoleController@index')->name('roles.index')
        ->middleware('permission:roles.index');

    Route::get('roles/create','Admin\RoleController@create')->name('roles.create')
        ->middleware('permission:roles.create');

    Route::put('roles/{id}','Admin\RoleController@update')->name('roles.update')
        ->middleware('permission:roles.edit');

    Route::get('roles/{id}','Admin\RoleController@show')->name('roles.show')
        ->middleware('permission:roles.show');
    
    Route::delete('roles/{id}','Admin\RoleController@destroy')->name('roles.destroy')
        ->middleware('permission:roles.destroy');
    
    Route::get('roles/{id}/edit','Admin\RoleController@edit')->name('roles.edit')
        ->middleware('permission:roles.edit'); 


    //Productos

    Route::post('productos/store','Admin\ProductoController@store')->name('productos.store');  

    Route::get('productos','Admin\ProductoController@index')->name('productos.index')
    ->middleware('permission:productos.index'); 

    Route::get('productos/create','Admin\ProductoController@create')->name('productos.create')
    ->middleware('permission:productos.create');       

    Route::put('productos/{id}','Admin\ProductoController@update')->name('productos.update');
             

    Route::get('productos/{id}','Admin\ProductoController@show')->name('productos.show')
    ->middleware('permission:productos.show');         
    
    Route::delete('productos/{id}','Admin\ProductoController@destroy')->name('productos.destroy')
    ->middleware('permission:productos.destroy');         
    
    Route::get('productos/{id}/edit','Admin\ProductoController@edit')->name('productos.edit')
    ->middleware('permission:productos.edit'); 
       



    //Users

    

    Route::get('users','Admin\UserController@index')->name('users.index')
    ->middleware('permission:users.index');

    Route::get('users/create','Admin\UserController@create')->name('users.create')
    ->middleware('permission:users.create');

    Route::get('users/{id}/edit','Admin\UserController@edit')->name('users.edit')
    ->middleware('permission:users.edit');

    Route::put('users/{id}','Admin\UserController@update')->name('users.update')
    ->middleware('permission:users.edit');

    Route::get('users/{id}','Admin\UserController@show')->name('users.show')
    ->middleware('permission:users.show');

    Route::delete('users/{id}','Admin\UserController@destroy')->name('users.destroy')
    ->middleware('permission:users.destroy');

    



//categorias

    Route::post('categorias/store','Admin\CategoriaController@store')->name('categorias.store');

    Route::get('categorias','Admin\CategoriaController@index')->name('categorias.index')
    ->middleware('permission:categorias.index');

    Route::get('categorias/create','Admin\CategoriaController@create')->name('categorias.create')
    ->middleware('permission:categorias.create');

    Route::put('categorias/{id}','Admin\CategoriaController@update')->name('categorias.update');

    Route::get('categorias/{id}','Admin\CategoriaController@show')->name('categorias.show')
    ->middleware('permission:categorias.show');    

    Route::delete('categorias/{id}','Admin\CategoriaController@destroy')->name('categorias.destroy')
    ->middleware('permission:categorias.destroy');

    Route::get('categorias/{id}/edit','Admin\CategoriaController@edit')->name('categorias.edit')
    ->middleware('permission:categorias.edit');



//marcas

    Route::post('marcas/store','Admin\MarcaController@store')->name('marcas.store');

    Route::get('marcas','Admin\MarcaController@index')->name('marcas.index')
    ->middleware('permission:marcas.index');

    Route::get('marcas/create','Admin\MarcaController@create')->name('marcas.create')
    ->middleware('permission:marcas.create');

    Route::put('marcas/{id}','Admin\MarcaController@update')->name('marcas.update');

    Route::get('marcas/{id}','Admin\MarcaController@show')->name('marcas.show')
    ->middleware('permission:marcas.show');

    Route::delete('marcas/{id}','Admin\MarcaController@destroy')->name('marcas.destroy')
    ->middleware('permission:marcas.destroy');

    Route::get('marcas/{id}/edit','Admin\MarcaController@edit')->name('marcas.edit')
    ->middleware('permission:marcas.edit');

});

//web
Route::get('teclados', 'web\PageController@teclado')->name('web.teclado');
Route::get('mouse', 'web\PageController@mouse')->name('web.mouse');
Route::get('sonido', 'web\PageController@sonido')->name('web.sonido');
Route::get('camaras', 'web\PageController@camaras')->name('web.camaras');
Route::get('video', 'web\PageController@video')->name('web.video');
Route::get('accesorios', 'web\PageController@accesorios')->name('web.accesorios');
Route::get('nuevo', 'web\PageController@nuevo')->name('web.nuevo');
Route::get('celulares', 'web\PageController@celulares')->name('web.celular');
Route::get('perifericos', 'web\PageController@perifericos')->name('web.periferico');
Route::get('producto/{id}','web\PageController@show')->name('producto.show');

//carrito

Route::post('/carrito/agregar', 'web\CarritoController@agregar')->name('carrito.agregar');
Route::get('/carrito/checkout', 'web\CarritoController@checkout')->name('carrito.checkout');
Route::post('/carrito/remove', 'web\CarritoController@remove')->name('carrito.remove');
Route::post('/carrito/vaciar', 'web\CarritoController@vaciar')->name('carrito.vaciar');