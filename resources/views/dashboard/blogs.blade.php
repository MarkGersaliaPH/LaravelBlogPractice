@extends('layouts.dashboard')
  @section('content')
  @if (session('status'))
    <div class="alert alert-success">
        <i class="fa fa-check"></i> {{ session('status') }}
    </div>
@endif
    <div class="panel">
        <div class="panel-body">
            <strong>Blogs</strong> &nbsp;
            <a class="btn btn-sm btn-default" href="/dashboard/blogs/add"><i class="fas fa-plus-circle"></i> Add new blog</a>
        </div>
    </div>  
   
    <div class="panel">
        <div class="panel-body">
            <table id="myTable" class="table table-hover table-striped table-condensed display">
            <thead>
                    <th>#</th>
                    <th>Title</th>
                    <th>Posted by</th>    
                    <th>Created at</th>
                    <th style="width:150px">Action</th>
            </thead>  
            <tbody> 
                <?php $num = 1 ?>
                @foreach($blogs as $blog)
                    <tr>
                        <td>{{$num}}</td>
                        <td><a href="/dashboard/blogs/view/{{$blog->blog_id}}"> {{$blog->title}} </a></td>
                        <td>{{$blog->name}}</td>
                        <td>{{$blog->created_at}}</td>
                        <td> 
                        <a  onclick="if(!confirm('Are you sure you want to add this data?')) {return false;}" href="/dashboard/blogs/remove/{{$blog->blog_id}}"  class="btn btn-danger btn-sm"><i class="far fa-trash-alt"></i> Remove</a>
                        <a href="/dashboard/blogs/update/{{$blog->blog_id}}" class="btn btn-info btn-sm"><i class="far fa-edit"></i> Update</a>
                        </td>
                    </tr>
                    <?php $num ++ ?>
                @endforeach
            </tbody>
            </table>
            <div>
        </div> 
    @endsection
 
 