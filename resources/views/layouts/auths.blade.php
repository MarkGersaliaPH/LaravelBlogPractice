<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laravel Blogs | index</title>
    
    {{-- Style --}}
<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
<link rel="stylesheet" href="{{asset('css/app.css')}}"> 
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<style>
    body{
        margin-top: 40px;
    }
</style>
</head>
<body>

<div class="container" style="width:400px">
        <div class="panel">
            <div class="panel-body"> 
            <center>
                <img class="img img-responsive" src="https://seeklogo.com/images/L/laravel-framework-logo-C10176EC8C-seeklogo.com.png" style="width:150px">
            </center>        
            <hr>
            @yield('content')
            </div>
        </div>
</div>