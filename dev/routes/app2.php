<?php

use App\Http\Controllers\App2Controller;
use Tabuna\Breadcrumbs\Trail;

/*
 * Frontend Controllers
 */
Route::get('/', [HomeController::class, 'index'])
    ->name('index')
    ->breadcrumbs(function (Trail $trail) {
        $trail->push(__('Index'), route('index'));
    });

