<?php

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

Route::get('/','HomeController@index',function(){
    return view('home');
});

Auth::routes(); 



// Group all routes that needs a logged in user
Route::group(['middleware' => 'auth'], function () {

            
        //Blogs functions
        Route::get('/dashboard', 'DashboardController@index');
        Route::get('/dashboard/blogs', 'DashboardController@blogs');
        Route::any('/dashboard/blogs/add', 'BlogController@add'); 
        Route::get('/dashboard/blogs/view/{id}','BlogController@view',function(){
            return view('dashboard.view_blog');
        });
        Route::any('/dashboard/blogs/update/{id}','BlogController@update');

        //Delete blog 
        Route::get('/dashboard/blogs/remove/{id}', function($id){

            $removeData = DB::table('blogs')
            ->where('blog_id','=',$id)
            ->delete();

            if($removeData){ 
                return redirect('/dashboard/blogs')->with('status', 'Post successfully deleted');
            }
        });

        Route::get('/dashboard/settings/','DashboardController@settings');
        Route::post('/dashboard/category_add','DashboardController@category_add');
        Route::get('/dashboard/remove_category/{id}',function($id){
            $removeData = DB::table('categories')
            ->where('category_id','=',$id)
            ->delete();
            
            if($removeData){ 
                return redirect('/dashboard/settings')->with('status', 'Category successfully deleted');
            }
        });

        Route::post('/dashboard/save_profile/','DashboardController@saveProfile');

});
 


