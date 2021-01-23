<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

use Cart;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['*'],'App\http\ViewComposers\MenuComposer');
        //Estado
        View::composer ('web.estado', function($view){
            $view->with('carritoCount',Cart::getContent()->count());
        });
        View::composer ('web.resumen', function($view){
            $view->with('carritoCount',Cart::getContent()->count());
        });
    }
}
