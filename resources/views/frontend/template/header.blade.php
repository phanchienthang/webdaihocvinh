<div class="header">
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-2">
                            <div class="header_logo">
                                <a href="{{url('/')}}" title="Trang chủ">
                                    <img src="{{url('image/logo/' .$logo->Description)}}" alt="logo">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6"><img src="{{url('image/logo/bannner.png')}}" alt="bannner"></div>
                        <div class="col-xs-6 col-md-4">
                            <p style="text-transform: uppercase;font-size: 15px;padding-top: 54px;">Nhóm 7 Phát triển ứng dụng web và php</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="header_menu">
                                <ul>
                                    @if(isset($Page) && count($Page) > 0)
                                    @foreach($Page as $k => $v)
                                    <li>
                                        @if($v->Alias =='/')
                                        <a href="{{url('/')}}" title="{{$v->Name}}">
                                        {!!$v->Name!!}
                                        </a>
                                        @else
                                        <a href="{{url('/' .$v->Alias)}}" title="{{$v->Name}}">
                                        {{$v->Name}}
                                        </a>
                                        @endif
                                    </li>
                                    @endforeach
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>