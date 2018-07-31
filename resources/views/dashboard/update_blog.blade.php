@extends('layouts.dashboard')
<script src="https://cdn.ckeditor.com/4.4.5/standard/ckeditor.js"></script>

@section('content')

<div class="panel">
    <div class="panel-body">
        <strong>Update blog</strong>
    </div>
</div>

 
<form action="/dashboard/blogs/add" method="POST" enctype="multipart/form-data" >
    {{csrf_field()}}
    
    <input type="hidden" value="1" name="update">
    <input type="hidden" value="{{$data->blog_id}}" name="blog_id">

    <div class="well">
        <div class="row">
            <div class="col-sm-2"> 
                <span class="btn btn-primary btn-file btn-sm" style="vertical-align:middle">
                <i class="fa fa-paperclip"></i> Attach photo <i class="fa fa-file-image-o"></i>
                <input type='file' name="fileToUpload" id="imgInp" />
                </span> 
            </div> 
            <div class="col-sm-3">
                <img src="{{asset('storage/uploads/'.$data->picture)}}" id="blah" alt="" style="width:500px;" class="img img-responsive">
            </div>
        </div>
    </div> 
        

<div class="panel panel-default">
    <div class="panel-body"> 
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                        <label for="">Title:</label>
                    <input type="text" name="title" value="{{$data->title}}" required class="form-control">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="">Category:</label>
                    <select name="category" required id=""  class="form-control">
                    <option default value=" {{$data->category_id}}"> --- {{$data->category}} ---</option>
                        @foreach($categories as $category)
                            <option value="{{$category->category_id}}">{{$category->category}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
            
    </div>
</div>

<div class="form-group">
        <textarea required name="content">
            {{$data->content}}
        </textarea>
        <script>
            CKEDITOR.replace( 'content' );
        </script>
</div>
<div class="form-group">
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>


    
</form>

<script type="text/javascript">
    function readURL(input) {
   if (input.files && input.files[0]) {
       var reader = new FileReader();
       
       reader.onload = function (e) {
           $('#blah').attr('src', e.target.result);
       }
       
       reader.readAsDataURL(input.files[0]);
   }
}

$("#imgInp").change(function(){
   readURL(this);
});
 </script>


@endsection