@extends($activeTemplate . 'layouts.master')
@section('content')
<!-- Page loading -->
    <div class="loading">
        <div class="spinner-grow"></div>
    </div>

    <div class="appHeader">
        <div class="left">
            <a href="" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a>
        </div>
        <div class="pageTitle">Reset Password</div>
    </div>

    <!-- App Capsule -->
    <div id="appCapsule" class="pb-2">

        <div class="appContent pb-0 mt-3">
            <div class="sectionTitle mt-3 pt-3">
                <div class="lead mb-2">Change Login Password</div>
            </div>
            <form   action=""    method="post" >
                @csrf
                <div class="form-group mb-3">
                    <input type="password" name="current_password" class="form-control" placeholder="Please enter your old password">
                </div>
                <div class="form-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Please enter a new password">
                </div>
                <div class="form-group mb-3">
                    <input type="password" name="password_confirmation" class="form-control" placeholder="Please enter new password again">
                </div>
                <div>
                    <button type="submit"   class="btn btn-primary btn-lg btn-block">
                        Confirm                    </button>
                </div>
            </form>
        </div>
    </div>
    
    @endsection