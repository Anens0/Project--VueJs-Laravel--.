<?php

use App\Http\Controllers\LocaleController;



// Switch between the included languages
Route::get('lang/{lang}', [LocaleController::class, 'change'])->name('locale.change');

/*
 * Global Routes
 *
 * Routes that are used between both frontend and backend.
*/
Route::group(['as' => 'frontend.'], function () {
    includeRouteFiles(__DIR__.'');
});
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    includeRouteFiles(__DIR__.'');
});

