<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laravel Blogs | index</title>
    
    {{-- Style --}}
<link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
<link rel="stylesheet" href="{{asset('css/main.css')}}"> 
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Roboto" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
</head>
<body>


    <div class="header">
        <div class="heading">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                            <img class="img img-responsive" src="https://www.juicymedia.co.uk/application/files/6115/1793/2313/Laravel_logo.png" style="width:180px">
                    </div>
                    <div class="col-sm-6">
                            <img src="https://tpc.googlesyndication.com/daca_images/simgad/15257495387962988183" border="0"   alt="" class="img img-responsive">         
                    </div>
                </div>
            </div>
               
        </div> 
    </div>
            <nav class="navbar navbar-default navbar-inverse">
                    <div class="container">
                      <!-- Brand and toggle get grouped for better mobile display -->
                      <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button> 
                        
                        <a class="navbar-brand" href="#">Laravel Blogs / Articles / Stories</a>
                      </div>
                  
                      <!-- Collect the nav links, forms, and other content for toggling -->
                      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            
                            <ul class="nav navbar-nav"> 
                                    <li><a href="/">Blogs</a></li>
                                    <li><a href="/">Categories</a></li>
                            </ul>
                        <ul class="nav navbar-nav navbar-right">
                            
                            @if (Route::has('login'))
                            @auth 
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">  {{ Auth::user()->name }} <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/dashboard/">My Profile</a>
                                </li>
                                <li>  
                                        <a class="dropdown-item" href="{{ route('logout') }}"
                                           onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">
                                            {{ __('Logout') }}
                                        </a>
    
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            @csrf
                                        </form> 
                                </li>
                                @else
                                <li>        
                                    <a href="{{ route('login') }}">Login</a>
                                </li>
                                <li>  
                                    <a href="{{ route('register') }}">Register</a>
                                </li>
                                
                                @endauth
                                @endif
                            </ul>
                          </li>
                        </ul>
                      </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                  </nav>
   

    @yield('content')


    <script src="{{asset('js/bootstrap.js')}}"></script>
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap.min.js"></script>

</body>
</html>