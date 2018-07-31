@extends('layouts.dashboard')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-notify/0.2.0/css/bootstrap-notify.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-notify/0.2.0/js/bootstrap-notify.js"></script>
@section('content')
@if (session('status'))
<div class="alert alert-success">
    <i class="fa fa-check"></i> {{ session('status') }}
</div>
@endif

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="well">
    <strong>Settings</strong>
</div>

<div class="panel" style="width:80%">
    <div class="panel-body">
        
<ul class="nav nav-tabs" id="myTab">
        <li class="active"><a data-toggle="tab" href="#home">Setup category </a></li>
        <li><a data-toggle="tab" href="#menu1">Account settings</a></li> 
      </ul>
      
      <div class="tab-content">
        <div id="home" class="tab-pane fade in active"> 
                <br>
                <div style="width:400px">
                    <strong>Current categories</strong> 
                    <button data-toggle="modal" data-target="#myModal" class="pull-right btn-default btn"><i class="fas fa-plus fa-sm"></i></button>
                    <br><br>
                    <table class="table table-striped table-hover table-bordered"> 
                        @foreach($categories as $category)  
                        <tr>
                            <td>
                            {{$category->category}}
                            <span class="">
                            <a href="/dashboard/remove_category/{{$category->category_id}}" for="" class="label label-danger pull-right"><i class="fas fa-trash"></i></a>
                            </span>  
                            </td>  
                        </tr>
                        @endforeach  
                    </table>
                </div>  
        </div>
        <div id="menu1" class="tab-pane fade">  
                <br><br>
                <form action="/dashboard/save_profile/" method="POST" enctype="multipart/form-data">
                    {{csrf_field()}}
                <table style="width:60%">
                    <tr>
                        <td><label for="">Profile picture:</label></td>
                        <td>
                            <div class="form-group">
                                    @if(Auth::user()->profile_picture == null)
                                    <img style="hover:opacity .9; "  id="blah" src="https://www.shofu.de/wp-content/themes/aaika/assets/images/default.jpg" class="img img-responsive img-thumbnail" style="width:100px;" alt=""> 
                                    @else
                                    <a href="" data-toggle="modal" data-target="#photoModal">
                                    <img  id="blah" src="{{asset('storage/uploads/'.Auth::user()->profile_picture)}}" style="width:100px;" alt="">  
                                    </a>
                                    @endif  
                                    <div class="form-group"> 
                                            <br>  
                                            <span class="btn btn-primary btn-file btn-sm">
                                                <i class="fa fa-paperclip"></i> Select photo <i class="fa fa-file-image-o"></i>
                                            <input type='file' name="fileToUpload" id="imgInp" />
                                            </span> 
                                    </div>
                            </div>
                        </td>
                    </tr>
                        <tr>
                            <td><label for="">Name:</label></td>
                            <td><input type="text" name="name" class="form-control" value="{{Auth::user()->name}}"></td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td><label for="">Email:</label></td>
                            <td><input type="email" name="email" class="form-control" value="{{Auth::user()->email}}"></td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr> 
                            <td colspan="2"><hr></td> 
                        </tr>
                        <tr>
                            <td>
                                <label for="">Old password:</label>
                            </td>
                            <td>
                                <input type="password" name="oldpassword" class="form-control">
                            </td>
                        </tr> 
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                <label for="">New password:</label>
                            </td>
                            <td>
                                <input type="password"  name="newpassword"  class="form-control">
                            </td>
                        </tr> 
                        <tr><td>&nbsp;</td></tr>
                        <tr> 
                                <td></td>
                                <td>
                                    <button  type="submit" class="btn btn-success">Save</button>
                                </td>
                            </tr>
                </table> 
            </form>
            </div>
            
        </div> 


    </div>
</div>

 
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
      
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Add category</h4>
            </div>
            <div class="modal-body">
                <form action="/dashboard/category_add" method="post">
                    {{csrf_field()}}
                    <div class="form-group">
                        <input type="text" name="category" placeholder="Enter here.." class="form-control">
                    </div>
                <button type="submit" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 
                
            </form>
            </div> 
          </div>
      
        </div>
      </div>
      
<div id="photoModal" class="modal" role="dialog">
    <div class="modal-dialog">
  
      <!-- Modal content-->
      <div class="modal-content">
      <img src="{{asset('storage/uploads/'.Auth::user()->profile_picture)}}" style="width:100%" class="img img-responsive" alt="">
            
      </div>
  
    </div>
  </div>

      <script>
              jQuery(document).ready(function() {
        jQuery('a[data-toggle="tab"]').on('show.bs.tab', function(e) {
            localStorage.setItem('activeTab', jQuery(e.target).attr('href'));
        });

        // Here, save the index to which the tab corresponds. You can see it 
        // in the chrome dev tool.
        var activeTab = localStorage.getItem('activeTab');

        // In the console you will be shown the tab where you made the last 
        // click and the save to "activeTab". I leave the console for you to 
        // see. And when you refresh the browser, the last one where you 
        // clicked will be active.
        console.log(activeTab);

        if (activeTab) {
           jQuery('a[href="' + activeTab + '"]').tab('show');
        }
    });
      </script>

      
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