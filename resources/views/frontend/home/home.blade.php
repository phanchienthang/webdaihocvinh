@extends('frontend.template.master')

@section('title', 'Đại học Vinh')

@section('description','')
@section('keywords','')
@section('url',url('/'))
@section('images','')
@section('content')
    <div class="home_page">
        <div class="slider_wrap" style="margin-left: 19%;margin-right: 19%;min-height: 300px;">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="{{url('admin/dist/img/tuyensinh-00.jpg')}}" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="{{url('admin/dist/img/tuyensinh-00.jpg')}}" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="{{url('admin/dist/img/tuyensinh-00.jpg')}}" alt="Third slide">
                </div>
            </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-8">
                <h3 class="heading">Tin tức</h3>

                <div class="listnews">
                    <div class="listview">
                    @if(isset($News) && count($News) > 0)
                    @foreach($News as $k => $v)
                        <div>
                            <ul class="context">
                                <li class="listitem"><a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
                                    <img class="thumb" style="max-width:250px" src="{{url('news/'.$v->Images)}}" alt="{{$v->Name}}">
                                        <b class="title">{{$v->Name}}</b>
                                        <p class="desc">{{$v->SmallDescription}}</p>
                                </a></li>       
                            </ul>
                        </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-4">
            <h3 class="heading">Thông báo</h3>
            <div>
                    <div>
                    @if(isset($News) && count($News) > 0)
                    @foreach($News as $k => $v)
                        <div>
                            <ul>
                                <li><a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
                                        <b>{{$v->Name}}</b>
                                </a></li>       
                            </ul>
                        </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop