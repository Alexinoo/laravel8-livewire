<?php

use App\Http\Livewire\Action;
use App\Http\Livewire\Contact;
use App\Http\Livewire\Form;
use App\Http\Livewire\Home;
use App\Http\Livewire\Post;
use App\Http\Livewire\Product;
use App\Http\Livewire\User;
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

Route::get('/', function () {
    return view('welcome');
});


Route::get('post', Post::class);
Route::get('user', User::class);

// Pass parameters
Route::get('home/{name}', Home::class);

// Pass optional parameters
// Route::get('home/{name?}', Home::class);


// PROPERTY BINDING
Route::get('form', Form::class);


//  ACTION BINDING
Route::get('action', Action::class);


//  LIFECYCLE HOOK
Route::get('product', Product::class);


//  LIVEWIRE FORM VALIDATION
Route::get('contact', Contact::class);