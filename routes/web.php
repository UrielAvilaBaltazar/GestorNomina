<?php

use App\Http\Controllers\EmpleadosController;
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

Route::get('/',[EmpleadosController::class, 'index'])->name('empleados.index');
Route::get('/create',[EmpleadosController::class, 'create'])->name('empleados.create');
Route::get('/edit',[EmpleadosController::class, 'edit'])->name('empleados.edit');
Route::get('/show',[EmpleadosController::class, 'show'])->name('empleados.show');