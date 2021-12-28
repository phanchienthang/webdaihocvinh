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
//========================= xử lý đăng nhập ================================//

Route::get('/login','UserController@getLogin');
Route::post('/login','UserController@postLogin');
Route::get('/logout','UserController@getLogout');






//=====================Phần backend============================//
Route::group(['prefix' => 'admin', 'middleware' => 'auth'],function(){
    // Welcome to admin 
    Route::get('/manager','ManagerController@manage');

    //Staff
    Route::group(['prefix' => 'staff'], function(){
        
        Route::get('profile','ManagerController@staff_profile');
        Route::post('profile','ManagerController@staff_profile_post');
        Route::get('list','ManagerController@staff_list');
        Route::get('add','ManagerController@staff_add');
        Route::post('add','ManagerController@staff_add_post');
        Route::get('edit/{id}','ManagerController@staff_edit');
        Route::post('edit/{id}','ManagerController@staff_edit_post');
        Route::get('delete/{id}','ManagerController@staff_delete');
        
        Route::post('filter','ManagerController@staff_filter');
        Route::get('setting','ManagerController@staff_setting');
    });

    // Cấu hình system
    Route::get('system','ManagerController@system');
    Route::post('system','ManagerController@system_post');


    // Quản lý trang
    Route::group(['prefix' => 'page'], function() {
        Route::get('list','ManagerController@page_list');
        Route::get('edit/{id}', 'ManagerController@page_edit');
        Route::post('edit/{id}','ManagerController@page_edit_post');
    });


    //Quản lý mạng xã hội
    Route::group(['prefix' => 'social'], function() {
        Route::get('list','ManagerController@social_list');
        Route::get('edit/{id}', 'ManagerController@social_edit');
        Route::post('edit/{id}','ManagerController@social_edit_post');
    });

    Route::group(['prefix' => 'contact'], function() {
        Route::get('list','ManagerController@contact_list');
        Route::get('edit/{id}', 'ManagerController@contact_edit');
        Route::post('edit/{id}','ManagerController@contact_edit_post');
        Route::get('delete/{id}','ManagerController@contact_delete');
    });


    Route::group(['prefix' => 'news_cat'], function() {
        Route::get('list','ManagerController@news_cat_list');
        Route::get('edit/{RowID}', 'ManagerController@news_cat_getedit');
        Route::post('edit/{RowID}','ManagerController@news_cat_edit');
    });


    Route::group(['prefix' => 'news'], function() {
        Route::get('list','ManagerController@news_list');
        Route::get('add', 'ManagerController@news_cat_getadd');
        Route::post('add','ManagerController@news_add');

        Route::get('edit/{RowID}','ManagerController@news_getedit');
        Route::post('edit/{RowID}','ManagerController@news_edit');

        Route::get('delete/{RowID}','ManagerController@news_delete');

        Route::post('sort/{id}', 'ManagerController@news_cat_update_sort');

       
    });
    
    Route::post('/add', function () {
        return view('admin.news.add');
    });
});

    //=====================================phần cáu hình front end=====================================//

    Route::get('/','FrontController@home');
    Route::get('/lien-he','FrontController@contact');
    Route::get('/gioi-thieu' ,'FrontController@about');
    Route::get('{slug}.html', 'FrontController@slugHtml');
    Route::get('{slug}', 'FrontController@slug');





    Route::post('/gui-lien-he','FrontController@contactSendEmail');
