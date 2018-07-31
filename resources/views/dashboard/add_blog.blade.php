@extends('layouts.dashboard')
<script src="https://cdn.ckeditor.com/4.4.5/standard/ckeditor.js"></script>

@section('content')

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="panel">
    <div class="panel-body">
        <strong>Post new blog</strong>
    </div>
</div>
 
<form action="" method="POST" enctype="multipart/form-data" >
    {{csrf_field()}}
<div class="well">
    <div class="row">
        <div class="col-sm-2"> 
            <span class="btn btn-primary btn-file btn-sm" style="vertical-align:middle">
                <i class="fa fa-paperclip"></i> Attach photo <i class="fa fa-file-image-o"></i>
                <input type='file' name="fileToUpload" id="imgInp" />
            </span> 
        </div> 
        <div class="col-sm-3">
            <img  id="blah" alt="" style="width:500px;" class="img img-responsive">
        </div>
    </div>
</div> 

<div class="panel panel-default">
    <div class="panel-body">
        <input type="hidden" value="0" name="update">
        <div class="row">
            <div class="col-sm-6"> 
                <div class="form-group">
                    <label for="">Title:</label>
                    <input type="text" name="title"   class="form-control">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="">Category:</label>
                    <select name="category" 
                        id="" class="form-control">
                        <option value="" default value=""> --- Select Category ---</option>
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
        <textarea name="content"><h2>Enter your content here</h2></textarea>
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