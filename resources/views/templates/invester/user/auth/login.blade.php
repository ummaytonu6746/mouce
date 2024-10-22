

@extends($activeTemplate . 'layouts.frontend')
@section('content')






<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="{{asset ('core/static/css/style.css')}}">
    <link rel="stylesheet" href="{{asset ('core/static/css/mui.min.css')}}">
    <link rel="stylesheet" href="{{asset ('core/static/css/mui.loading.css')}}">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, width=device-width">
 
</head>

<body>

    <!-- Page loading -->
    <div class="loading">
        <div class="spinner-grow"></div>
    </div>
    <!-- * Page loading -->

    <!-- App Header -->
    <div class="appHeader">
        <div class="left">
            <a href="/" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a>
        </div>
        <div class="pageTitle">Login</div>
    </div>

    <!-- App Capsule -->
    <div id="appCapsule" class="pb-2">

        <div class="appContent">
            <div class="sectionTitle mt-3 pt-3">
                <div class="lead mb-2">Welcome Back</div>
            </div>

            <form class="form-group" action="{{route ('user.login')}}" method="post"  >
                @csrf
                <div class="form-group mb-3">
                    <input type="number" name="username" class="form-control" placeholder="Please input account number">
                </div>
                <div class="form-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Please input password">
                </div>

                <div class="form-group row mt-3 mb-3">
                    <div class="col-6">

                    </div>
                    <div class="col-6 text-right">
                        <a href="https://t.me" class="text-muted">Contact Customer Service</a>
                    </div>
                </div>


                <div>
                    <button type="submit"   class="btn btn-primary btn-lg btn-block">
                        Sign in                    </button>
                </div>

            </form>
            <div class="mt-3 text-center text-dark">
                Don't have an account? <a href="{{route ('user.register')}}">Register</a>
            </div>
        </div>

    </div>

    <!-- ///////////// Js Files ////////////////////  -->
    <!-- Jquery -->
    <script src="{{asset ('core/static/js/jquery-3.4.1.min.js')}}"></script>
    <script src="{{asset ('core/static/js/mui.min.js')}}"></script>
    <script src="{{asset ('core/static/js/mui.loading.js')}}"></script>
    <script src="{{asset ('core/static/js/base.js')}}"></script>

</body>

</html>
@endsection