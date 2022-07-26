<?php

use App\Http\Controllers\MainController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

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

Route::get('/', [MainController::class, 'index']);

Route::get('/medicament/{slug}', [MainController::class, 'showMedic'])->name('medicament');
Route::get('/medicaments', [MainController::class, 'medicamentsList'])->name('medicaments');
Route::get('/agences', [MainController::class, 'agencesList'])->name('agences');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
