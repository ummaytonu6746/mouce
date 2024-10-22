


@extends($activeTemplate . 'layouts.frontend')
@section('content')






<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Signup </title>
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="{{asset ('core/static/css/style2.css')}}">

    <meta name="viewport" content="initial-scale=1, maximum-scale=1, width=device-width">

</head>

<body>

  
<body>

    <!-- Page loading -->
    <div class="loading">
        <div class="spinner-grow"></div>
    </div>
    <!-- * Page loading -->

    <!-- App Header -->
    <div class="appHeader">
        <div class="left">
            <a href="javascript:;" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a>
        </div>
        <div class="pageTitle">Sign up</div>
    </div>

    <div id="appCapsule" class="pb-2">
        <div class="appContent pb-0 mt-3">
            <div class="sectionTitle mt-3 pt-3">
                <div class="lead mb-2">Create account and enjoy all services</div>
            </div>

            <form class="form-group" action="{{route ('user.register')}}"      method="post" >
                @csrf
                <!--<div class="form-group mb-3">-->
                <!--    <input type="text" name="nickname" class="form-control" placeholder="Please enter your full name">-->
                <!--</div>-->
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="area_code" value="+91" style="width: 22%; float: left;text-center" readonly>
                    <input type="number" name="username" class="form-control" placeholder="Please enter mobile account"  style="width: 78%;">
                </div>
                    
                <div class="form-group mb-3">
                    <input type="email" name="email" class="form-control" placeholder="Email Login">
                </div>
                <div class="form-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Please input password">
                </div>
                <div class="form-group mb-3">
                    <input type="password" name="password_confirmation" class="form-control" placeholder="Please Re input password">
                </div>
                <div class="form-group mb-3">
                    <input type="text"  value="{{ session()->get('reference') }}" class="form-control" placeholder="Please enter the invitation code">
                </div>

                   

                <div style="padding-top:80px;">
                    <button type="submit"   class="btn btn-primary btn-lg btn-block">
                        Sign up                    </button>
                </div>
            </form>

            <div class="mt-3 text-center text-dark">
                Already have an account? Login now? <a href="{{route ('user.login')}}">Login</a>
            </div>
        </div>
    </div>
@endsection














