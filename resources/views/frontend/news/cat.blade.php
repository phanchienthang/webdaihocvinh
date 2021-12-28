@extends('frontend.template.master')

@section('title', 'Đại học Vinh')

@section('description','')
@section('keywords','')
@section('url',url('/'))
@section('images','')
@section('content')
<div class="content_wrap">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="contact_page">
                    <div class="heading">
                        {{$newCat->Name}}
                    </div>
                    <ul>
                        @if(isset($listNew) && count($listNew) > 0)
                        @foreach($listNew as $k => $v)
                        <li>
                            <a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
                                <img src="{{url('news/'.$v->Images)}}" alt="{{$v->Name}}">
                                <b>{{$v->Name}}</b>
                                <p>
                                    {{$v->SmallDescription}}
                                    <span>[xem thêm]</span>
                                </p>
                            </a>
                        </li>
                        @endforeach
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@stop