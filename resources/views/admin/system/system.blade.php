@extends('admin.template.master')

@section('title', 'Cài đặt website')
@section('system', 'active')

@section('heading','Cài đặt website')



@section('content')
<div class="col-md-12">
    <div class="card card-primary">
        <!-- form start -->
        <form role="form" action="{{url('admin/system/')}}" method="POST" enctype="multipart/form-data">
            <div class="card-body">
                {!! csrf_field() !!}

                
                <div class="form-group">
                    <label for="exampleInputEmail1">Tên website<span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="name" value = " {{$name->Description}}">
                </div>

                <div class="form-group">
                    <!-- Phải cấu hình v host mới vào được chỗ này -->
                    <label for="exampleInputEmail1">Logo <span class="color_red">*</span></label><br>
                    <img src="{{ url('image/logo/'.$logo->Description) }}" alt="logo">
                    <input type="file" class="form-control" name="logo"  value="{{$logo->Description}}"> 
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Favicon <span class="color_red">*</span></label><br>
                    <img src="{{ url('image/favicon/'.$favicon->Description) }}" alt="logo">
                    <input type="file" class="form-control" name="favicon" value="{{$favicon->Description}}">
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Email<span class="color_red">*</span></label>
                    <input type="email" class="form-control" name="email" value = " {{$email->Description}}">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Số điện thoại<span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="phone" value = " {{$phone->Description}}">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Địa chỉ<span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="address" value = " {{$address->Description}}">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Copyright</span></label>
                    <input type="text" class="form-control" name="copyright" value = " {{$copyright->Description}}">
                </div>
                


            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Cập nhật</button>
            </div>
        </form>
    </div>
</div>

@stop