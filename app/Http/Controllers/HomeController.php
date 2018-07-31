<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs = DB::table('blogs')->get();
        // $featured = DB::table('blogs')
        // ->orderBy('blogs.blog_id','DESC')
        // ->join('categories','blogs.category','=','categories.category_id')
        // ->limit(4)
        // ->get(); 
        $featured = DB::table('blogs')
        ->orderBy('blogs.blog_id','DESC')
        ->join('categories','blogs.category','=','categories.category_id')
        ->join('users','users.id','=','blogs.posted_by')
        ->limit(4)
        ->get(); 

        $recent = DB::table('blogs')
        ->orderBy('blogs.title','ASC')
        ->join('categories','blogs.category','=','categories.category_id')
        ->join('users','users.id','=','blogs.posted_by')
        ->limit(5)
        ->get(); 

        $categories = DB::table('categories')->get();

        return view('home',['data'=>$blogs,'featured'=>$featured, 'recent'=>$recent, 'categories'=>$categories]);
    }
}
