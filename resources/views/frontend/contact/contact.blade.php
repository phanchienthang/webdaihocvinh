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
                        {{$PageInfor->Name}}
                    </div>
                    <form method="POST">
                    <div class="form-group">
                            <label class="col-md-3 control-label" for="name">Họ tên</label>
                            <div class="col-md-9">
                                <input id="txtname" name="name" type="text" placeholder="Họ tên" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="name">Số điện thoại</label>
                            <div class="col-md-9">
                                <input id="txtphone" name="name" type="text" placeholder="Số điện thoại" class="form-control">
                            </div>
                        </div>
                            <!-- Email input-->
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="email">E-mail</label>
                            <div class="col-md-9">
                                <input id="txtemail" name="email" type="text" placeholder="Địa chỉ email" class="form-control">
                            </div>
                        </div>
                    
                            <!-- Message body -->
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="message">Nội dung phản hồi</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="txtmessage" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
                            </div>
                        </div>
                    
                            <!-- Form actions -->
                        <div class="form-group">
                            <div class="col-md-12 text-right">
                                <button type="submit" id="btnSendContact" class="btn btn-primary btn-lg">Phản hồi</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@stop