<?php

namespace App\Http\Controllers\;

/**
 * Class App2Controller.
 */
class App2Controller
{
    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index()
    {
        return view('app2');
    }
}