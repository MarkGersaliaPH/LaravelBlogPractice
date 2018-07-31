@extends('layouts.main')

@section('content')
<div class="banner">
<div class="container">
        <h1>Featured Article</h1>
        <div class="row">
            @foreach($featured as $featured)
            <div class="col-sm-3">
                <img src="{{asset('storage/uploads/'.$featured->picture)}}" alt="" class="img img-responsive">
                
                <strong class="text-muted">{{$featured->category}}</strong><br>
                <h4>{{$featured->title}}</h4>
                
                <small>&ndash;{{$featured->name}}</small>
            </div>
            @endforeach
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-9">

                <img src="https://tpc.googlesyndication.com/daca_images/simgad/16958146823893772554" border="0" width="728" alt="" class="img_ad">
            <h2>Recent Stories</h2>
            <hr>
            @foreach($recent as $recent)
                <!-- Media top -->
                <div class="media">
                <div class="media-left media-top">
                    <img src="{{asset('storage/uploads/'.$recent->picture)}}" class="media-object" style="width:300px">
                </div>
                <div class="media-body">
                <a href="/pages/view/story/{{$recent->id}}"><h2 class="media-heading">{{$recent->title}}</h2></a>
                <small class="text-danger">{{$recent->category}}</small>
                <small>&ndash;{{$recent->name}}</small>
                <p>{!! str_limit($recent->content, 170) !!}</p>
                <a href="">Read more</a>
                </div>
                </div>

            @endforeach
                <br>
                <ul class="pagination">
                        <li class="active"><a href="#">1</a></li>
                        <li ><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                      </ul>

        </div>
        <div class="col-sm-3">
            <!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
        <a class="a2a_dd" href="https://www.addtoany.com/share"></a>
        <a class="a2a_button_facebook"></a>
        <a class="a2a_button_twitter"></a>
        <a class="a2a_button_google_plus"></a>
        <a class="a2a_button_pinterest"></a>
        <a class="a2a_button_linkedin"></a>
        <a class="a2a_button_tumblr"></a>
        <a class="a2a_button_wordpress"></a>
        <a class="a2a_button_email"></a>
        <a class="a2a_button_google_gmail"></a>
        <a class="a2a_button_skype"></a>
        </div>
        <script async src="https://static.addtoany.com/menu/page.js"></script>
        <!-- AddToAny END -->
            <h2>Top Categories</h2>
            <ul class="list-group">
            @foreach($categories as $category)
                <a href="" class="list-group-item">
                    {{$category->category}}
                </a>
            @endforeach
            </ul>

            <img  src="https://www.runmagazine.asia/wp-content/uploads/2018/05/RUN-Subscription-OUTNOW_Jun-Jul2018.jpg" class="img img-responsive" alt="RUN-Subscription-OUTNOW_Jun-Jul2018" srcset="https://www.runmagazine.asia/wp-content/uploads/2018/05/RUN-Subscription-OUTNOW_Jun-Jul2018.jpg 605w, https://www.runmagazine.asia/wp-content/uploads/2018/05/RUN-Subscription-OUTNOW_Jun-Jul2018-218x300.jpg 218w" sizes="(max-width: 605px) 100vw, 605px">
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Iste, animi! Fugit saepe esse voluptatibus? Quas repellat aspernatur laboriosam debitis minima ducimus exercitationem nemo eveniet, officia vel accusantium deleniti ex pariatur.
        </div>
    </div>
</div>

<div class="footer">
                          
    </div>
@endsection
