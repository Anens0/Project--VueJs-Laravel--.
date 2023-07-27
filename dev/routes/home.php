<?php

use App\Http\Controllers\HomeController;
use Tabuna\Breadcrumbs\Trail;

/*
 * Frontend Controllers
 */
Route::get('/', [HomeController::class, 'home'])
    ->name('home')
    ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Home'), route('home'));
    });

