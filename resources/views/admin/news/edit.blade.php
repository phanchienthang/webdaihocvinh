@extends('admin.template.master')

@section('title', 'Quản lý danh sách tin tức')
@section('news','active')
@section('heading','Chỉnh sửa tin tức')

@section('content')
<div class="col-md-12">
    <div class="card-header ">
        <a href="{{url('admin/news/list')}}" class="btn btn-block btn-warning" title="Quay lại" class=""> 
            Quay lại danh sách tin tức
        </a>
    </div>
    <div class="card card-primary">
        <!-- form start -->
        <form role="form" action="{{url('admin/news/edit/'.$News->RowID)}}" method="POST" enctype="multipart/form-data">
            <div class="card-body">
                {!! csrf_field() !!}

                <div class="form-group">
                    <select class="form-control" name="Status">                  
                        <option value="1" @if($News->Status == 1) selected="" @endif>
                            Trạng thái: Bật
                        </option>
                        <option value="0" @if($News->Status == 0) selected="" @endif>
                            Trạng thái: Tắt
                        </option>
                            
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control" name="RowIDCat">
                        @if(isset($NewsCategory) && count($NewsCategory) > 0 )
                        @foreach($NewsCategory as $k =>$v)

                        <option value="{{$v->RowID}}" @if($News->RowIDCat == $v->RowID ) selected="" @endif >
                            Danh mục: {{$v->Name}}

                        </option>
                        @endforeach
                        @endif
                        
                    </select>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Tên tin tức<span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="Name" onkeyup="ChangeToSlug()">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Đường dẫn</label>
                    <input type="text" class="form-control" name="Alias" id="slug" value="{{$News->Alias}}">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta title</label>
                    <textarea type="text" class="form-control" name="MetaTitle" rows = "2" value = "">{{$News->MetaTitle}} </textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta description</label>
                    <textarea type="text" class="form-control" name="MetaDescription" rows = "2" value = ""> {{$News->MetaDescription}}</textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta keyword</label>
                    <textarea type="text" class="form-control" name="MetaKeyword" rows = "2" value = "">{{$News->MetaKeyword}} </textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Giới thiệu ngắn</label>
                    <textarea type="text" class="form-control" name="SmallDescription" rows = "4" value = "">{{$News->SmallDescription}} </textarea>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Ảnh đại diện</label>
                    @if($News->Images != NULL)
                        <img src="{{url('news'.$News->Images)}}" alt="ảnh">
                    @endif
                    <input type="file" class="form-control" name = "Images" value = "{{$News->Images}}"> 
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Mô tả tin tức<span class="color_red">*</span></label>
                    <textarea type="text" id="ckeditor" class="form-control" name="Description" rows = "10" value ="">{{$News->Description}} </textarea>
                    
                </div>
            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Chỉnh sửa</button>
            </div>
        </form>
    </div>
</div>

@stop