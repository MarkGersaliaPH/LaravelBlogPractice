<?php
 

namespace App\Http\Controllers;  
use Illuminate\Http\Request;  
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\File; 
use Illuminate\Support\Facades\Storage;  
use Validate;
use DB;
use Auth; 


class BlogController extends Controller
{
    //

    public function blog_list(){

    }

    public function add(Request $request){

        $frmData = Input::Post();

        if($frmData != null){ 
             
            $request->validate([
                'fileToUpload' => 'required|file|max:1024',
                'title' => 'required', 
                'category' => 'required',
                'content' => 'required',
            ]); 

            $title = $request['title'];
            $content = $request['content'];
            $category = $request['category'];;
            $posted_by = Auth::user()->id; 
            $image = $request->file('fileToUpload');  
            $filename =  $image->getClientOriginalName(); 
          
             
            if($request['update'] == 1){ 
                $addData = DB::table('blogs')
                ->where('blog_id','=',$request['blog_id'])
                ->update([
                    'title'=>$title,
                    'content'=>$content,
                    'category'=>$category,
                    'posted_by'=>$posted_by,
                    'picture'=>$filename, 
                ]); 
            }else{ 
                $addData = DB::table('blogs')
                ->insert([
                    'title'=>$title,
                    'content'=>$content,
                    'category'=>$category,
                    'posted_by'=>$posted_by,
                    'picture'=>$filename,
                ]);

            }

            if($addData){ 
                $request->fileToUpload->storeAs('uploads',$filename);
 
                return redirect('/dashboard/blogs')->with('status', 'A new post successfully added');
            }else{
                echo "Error";
                die();
            }
        } 
        
 

        $category = DB::table('categories')->get();


        return view('dashboard.add_blog',['categories'=>$category]);
    }
 
    public function view($id = null){
        
        $blogs = DB::table('blogs')
        ->join('users','users.id','=','blogs.posted_by') 
        ->join('categories','categories.category_id','=','blogs.category') 
        ->where('blog_id','=',$id)
        ->orderBy('blog_id','DESC')
        ->first();
 

        return view('dashboard.view_blog',['data' => $blogs]);
    }

    public function update($id = null){ 
        
        
        $blogs = DB::table('blogs')
        ->join('users','users.id','=','blogs.posted_by') 
        ->join('categories','categories.category_id','=','blogs.category') 
        ->where('blog_id','=',$id)
        ->orderBy('blog_id','DESC')
        ->first();
        
        $category = DB::table('categories')->get();
        return view('dashboard.update_blog',['data' => $blogs,'categories'=>$category]);
    }
}
