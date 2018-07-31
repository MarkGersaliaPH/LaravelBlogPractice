<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Http\Request;
use DB;
use Auth;
use Redirect;

class dashboardController extends Controller
{
    //
    public function index(){

        return view('dashboard.index');
    }

    public function blogs(){

        //Fetch the blog data
        $blogs = DB::table('blogs')
        ->join('users','users.id','=','blogs.posted_by')
        ->orderBy('blog_id','DESC')
        ->get();
        
        return view('dashboard.blogs',['blogs'=>$blogs]);
    }

    public function settings(){

        //Fetch the data of logged in user
        $userDetails = Auth::user();

        //Fetch the category list
        $categories = DB::table('categories')->get();
        
        return view('dashboard.settings',['userDetails'=>$userDetails,'categories'=>$categories]);
    }

    public function category_add(Request $request){
        //Get the requested data
        $category = $request['category']; 

        //Insert query
        $addData = DB::table('categories')->insert(['category'=>$category]); 
       
        return redirect('/dashboard/settings')->with('status', 'Category successfully saved'); 
    }

    public function saveProfile(Request $request){ 
        //Get the requested data
        $name = $request['name'];
        $email = $request['email'];
        $image = $request['fileToUpload']; 
  
        $id = Auth::user()->id; //Get logged in user id

        //data validation
        $validate = $request->validate([
            'fileToUpload' => 'file|max:1024',
            'name'=>'required',
            'email'=>'required'
        ]);
        
        if(!$request['oldpassword']==null){
            //Check the password if correct
            if(Hash::check($request['oldpassword'],Auth::user()->password)){
                $validate = $request->validate([
                    'newpassword' => 'required' 
                ]);
                //if true, Hash the requested password for saving
                $password = Hash::make($request['newpassword']);
            }else{
                //if false, redirect to previous page with error
                return Redirect::back()->withErrors(['The password you enter do not match please try again']);
            } 
        }else{
            $password = Auth::user()->password;
        }
        
 
        //Check if the request image if null
        if($image == null){ 
            //if null set the fetch the data from database
            $filename = Auth::user()->profile_picture;
            $image = Auth::user()->profile_picture;
        }else{ 
            //else set the name for the image
            $filename = Auth::user()->name."profile-picture"."-".Auth::user()->id.".jpg"; 
            
                //Store the image to storage/public/uploads with the file name
                $request->fileToUpload->storeAs('uploads',$filename);
        }

 
    
       //query for updating data
        $updateProfile = DB::table('users')
        ->where('id','=',$id)
        ->update([
            'name' => $name,
            'email' => $email,
            'profile_picture' => $filename, 
            'password' => $password
            ]); 

            //if data is successfully save
            if($updateProfile){ 
                //if true redirect with session success 
                return redirect('/dashboard/settings')->with('status','Profile successfully updated');
            } else{
                //if false return with error 
                echo "Error";
                die();
            }
    } 

}
