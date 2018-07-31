@extends('layouts.dashboard')

@section('content') 
<div class="panel">
    <div class="panel-body"> 
        <h1>{{$data->title}}</h1>
        <strong class="text-muted">By</strong> <span style="text-transform:uppercase;font-weight:bold">{{$data->name}}</span>
        <small>{{$data->created_at}}</small>
        <br><br>
        <img src="{{asset('storage/uploads/'.$data->picture)}}" alt="" title="" class="img img-responsive">
        <br>
        <p>
            {!! $data->content !!}
        </p>
    </div>
</div>
@endsection
