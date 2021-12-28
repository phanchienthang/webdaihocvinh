@extends('admin.template.master')

@section('title', 'Cài đặt tài khoản')

@section('heading','Cài đặt tài khoản')



@section('content')
<div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <p>Danh sách tài khoản</p>
              </div>
              <div class="icon">
              <i class="fas fa-list-alt"></i>
              </div>
              <a href="http://127.0.0.1:8000/admin/staff/list" class="small-box-footer">Xem thêm<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <p>Thêm tài khoản</p>
              </div>
              <div class="icon">
              <i class="fas fa-user-plus"></i>
              </div>
              <a href="http://127.0.0.1:8000/admin/staff/add" class="small-box-footer">Xem thêm<i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <p>Xóa tài khoản</p>
              </div>
              <div class="icon">
              <i class="fas fa-user-times"></i>
              </div>
              <a href="#" class="small-box-footer">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>

@stop