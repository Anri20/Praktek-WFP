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

Route::get('/', function () {
    return view('home');
})->name("back");

Route::get('/contact-us', function () {
    return "Ini halaman Contact Us.";
});

Route::get('/4-about-us', function () {
    return "Ini halaman About Us.";
});

Route::get('/1-delivery', function () {
    return "Ini halaman Delivery.";
});

Route::get('/guest-tracking', function () {
    return "Ini halaman Guest Order Tracking.";
});

Route::get('/my-account', function () {
    return "Ini halaman Sign In / Log In.";
});

Route::get('/5-secure-payment', function () {
    return "Ini halaman Secure Payment.";
});

Route::get('/stores', function () {
    return "Ini halaman Stores.";
});

Route::get('/sales/order/track', function () {
    return "Ini halaman Lacak Pesanan.";
});

Route::get('/mitra10-catalog-product', function () {
    return "Ini halaman Katalog Produk.";
});

Route::get('/customer/setting', function () {
    return "Ini halaman Setting.";
});

Route::get('/registration', function () {
    return "Ini halaman Create Account.";
});

Route::get('/customer/account', function () {
    return "Ini halaman Dashboard Account.";
});

Route::get('/membership', function () {
    return "Ini halaman Membership.";
});

Route::get('/whatsapp-stores', function () {
    return "Ini halaman Whatsapp Stores.";
});

Route::get('coba1/{test1}', function ($test1) {
    return 'halaman coba 1 ' . $test1;
});

Route::get('coba2/{test2?}', function ($test2 = 'halo') {
    return 'halaman coba 2 ' . $test2;
});

// Route::get('/kategori/{code?}', function ($code = 0) {
//     return view('listkategori', ['code' => $code]);
// })->name('listkategori');

Route::resource('/kategori', "CategoryController");

Route::get('/productTable', 'ProductController@productTable')->name('productTable');
Route::get('/productTable/{productTable}', 'ProductController@productTableShow')->name('productTableShow');

Route::get('/productGrid', 'ProductController@productGrid')->name('productGrid');
Route::get('/productGrid/{productTable}', 'ProductController@productGridShow')->name('productGridShow');
Route::get('/productGrid/withCategory/{category}', 'ProductController@productGridWithCategory')->name('productGridWithCategory');
