<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập trang quản trị</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
    <div class="card">
        <article class="card-body">
            <h4 class="card-title text-center mb-4 mt-1">Đăng nhập</h4>
            <hr>
            <form action = {{url('login')}} method = "POST">
                {!! csrf_field() !!}
            <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                </div>
                <input name="username" class="form-control" placeholder="Tên đăng nhập" type="text">
            </div> <!-- input-group.// -->
            </div> <!-- form-group// -->
            <div class="form-group">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                </div>
                <input name="password" class="form-control" placeholder="******" type="password">
            </div> <!-- input-group.// -->
            </div> <!-- form-group// -->
            <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block"> Đăng nhập</button>
            </div> <!-- form-group// -->
            @if(session('notice'))
                <div class="alert alert-danger">
                    {{session('notice')}}
                </div>
            @endif
            </form>
        </article>
    </div> <!-- card.// -->
</body>
</html>