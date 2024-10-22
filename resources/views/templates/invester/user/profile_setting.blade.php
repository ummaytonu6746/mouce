	@extends($activeTemplate . 'layouts.master')
@section('content')
   
	
	
	
		<style type="text/css">
			.btn-primary {
				border: none;
			}
			.iconed {
				background: #fff;
				border-radius: 20px;
				padding: 6px 0px;
		 		margin-top: 15px;
				box-shadow: 0px 0px 9px 2px rgba(0, 0, 0, 0.08);
			}

			.appContent {
				background: none;
			}
			/*.appHeader {*/
			/*    height: 56px;*/
			/*    display: flex;*/
			/*    justify-content: center;*/
			/*    align-items: center;*/
			/*    position:absolute;*/
			/*    top: 0;*/
			/*    left: 0;*/
			/*    right: 0;*/
			/*    z-index: 9990;*/
			/*}*/
			.text-muted {
			    color: var(--white);
			    font-size: 12px;
			    font-weight: 400;
			    background: var(--yellow);
			    width: 80px;
			    text-align: center;
			    border-radius: 4px;
			}
			.listView .listItem .image img {
			    width: 18px;
			    height: auto;
			    border-radius: 6px;
			}

			.kefu_menu {
				width: 70px;
				height: 70px;
				position:fixed;
				border-radius:55px;
				z-index:999999;
				right: 10px;
				top: 50%;
				background-color:white;
			}
			.kefu_menu_image {
				width: 70px;
				height: 70px;
			}
		</style>
	</head>

	<body>
		<!--<div class="kefu_menu" id="back-button">-->
		<!--	<img class="kefu_menu_image" id="kefu_menu"  src="/static/img/kf.png">-->
		<!--</div>-->
		<!-- 浮动 -->
		<!-- Page loading -->
		<div class="loading">
			<div class="spinner-grow"></div>
		</div>
		<!-- * Page loading -->
		<!-- App Header -->
		<div class="appHeader" style="background-color:#0160bf;">
			<div class="left">
				<!--<a href="javascript:;" class="icon goBack">-->
				<!--	<i class="icon ion-ios-arrow-back"></i>-->
				<!--</a>-->
			</div>
			<div class="pageTitle">Me</div>
		</div>
@php
  $authUser = Auth::user();
  $userCount = App\Models\User::where('ref_by', $authUser->id)->count();
@endphp

		<div id="appCapsule">

			<div class="appContent">
				<!-- listview -->
				<div class="listView iconed">
					<a href="#" class="listItem" style="background: none; padding-left: 0">
						<div class="iconBox" style="margin-right:-10px;">
							<!-- /static/img/user-icon.png -->
							<img src="{{ asset(getImage(getFilePath('logoIcon') . '/logo_2.png')) }}" style="width:70px">
							<!--<input type="file" accept="image/*" multiple onchange="uploadImg()">-->
						</div>
						<div class="text pl-2" style="padding-left:0px">
							<div>
								<strong style="font-size: 18px; font-weight: 500;">{{ auth()->user()->username }}</strong>
							</div>
						</div>
					</a>
					<div class="card-content card2">

						<div class="card-info d-flex" style="text-align:center;">
						    <div class="holder-info col-4">

								<h6 class="c-name mb-0">
						
								  {{ showAmount(auth()->user()->interest_wallet) }}	{{ $general->cur_text }}						    </h6>
								<small class="c-info">Total Balance</small>
							</div>
							<div class="holder-info col-4">

								<h6 class="c-name mb-0">
								    <!--0-->
								     {{ showAmount(auth()->user()->deposit_wallet) }} {{ $general->cur_text }}								    </h6>
								<small class="c-info">Total Recharge</small>
							</div>
						
						<div class="holder-info col-4">

							<h6 class="c-name mb-0">
					
							     {{ $userCount }}							    </h6>
							<small class="c-info">Total People</small>
						</div>
					
						</div>
					</div>

					<!--<div class="card-content card2">-->
					<!--	<div class="card-info d-flex" style="text-align:center;">-->
					<!--		<div class="holder-info col-6">-->
					<!--			<h6 class="c-name mb-0">Rs235</h6>-->
					<!--			<small class="c-info">Total Income</small>-->
					<!--		</div>-->
					<!--		<div class="holder-info col-6">-->
					<!--			<h6 class="c-name mb-0">Rs235</h6>-->
					<!--			<small class="c-info">Total Balance </small>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--</div>-->
				</div>
				
				<!--<div class="listView iconed" style="margin-top:10px;margin-bottom:5px;">-->
				<!--	<div class="card-content card2">-->
				<!--		<div class="card-info d-flex" style="text-align:center;">-->
				<!--			<div class="holder-info col-6">-->
				<!--				<h6 class="c-name mb-0">0</h6>-->
				<!--					<small class="c-info">Total Balance</small>-->
				<!--			</div>-->
				<!--			<div class="holder-info col-6">-->
								
				<!--				<h6 class="c-name mb-0">235</h6>-->
				<!--				<small class="c-info">Today's Income</small>-->
				<!--			</div>-->
							
				<!--		</div>-->
				<!--	</div>-->
				<!--</div>-->
				
				<div class="row">
					<div class="col-6 mt-2">
						<a href="{{ route('user.deposit.index') }}" class="btn btn-primary btn-block">
							  <i class="icon"><img src="{{asset ('core/img/Recharge.svg')}}"></i>
						Recharge	
						</a>
					</div>
					<div class="col-6 mt-2">
						<a href="{{ route('user.withdraw') }}" class="btn  btn-primary btn-block">
							  <i class="icon"><img src="{{asset ('core/img/withdraw.svg')}}"></i>
							Withdraw	
						</a>
					</div>
				</div>

				<!-- listview -->
				<div class="listView mt-1">
					<!--<a href="/index/product/myproduct.html" class="listItem">-->
					<!--	<div class="image">-->
					<!--		<div class="iconBox bg-danger">-->
					<!--			<i class="icon  ion-ios-paper"></i>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--	<div class="text">-->
					<!--		<div>-->
					<!--			<strong style="font-size:12px">My Device</strong>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--</a>-->
					<a href="{{route ('user.deposit.history')}}" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<i class="icon  ion-ios-list-box"></i>
							</div>
						</div>
						<div class="text">
							<div>
								<strong style="font-size:12px">Recharge Details</strong>
							</div>
						</div>
					</a>
							<a href="{{route ('user.withdraw.history')}}" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<i class="icon  ion-ios-list-box"></i>
							</div>
						</div>
						<div class="text">
							<div>
								<strong style="font-size:12px">withdraw Details</strong>
							</div>
						</div>
					</a>
					
					
					
					
					<a href="" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<img src="{{asset ('core/img/download.png')}}" alt="">
							</div>
						</div>
						<div class="text">
							<div>
								<strong style="font-size:12px">Download APP</strong>
							</div>
						</div>
					</a>

					
					<a href="{{route ('user.invest.log')}}" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<i class="icon  ion-ios-wallet"></i>
							</div>
						</div>
						<div class="text">
							<div>
								<strong style="font-size:12px">My Invest</strong>
							</div>
						</div>
					</a>

					
					<a href="{{ route('user.change.password') }}" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<i class="icon ion-ios-lock"></i>
							</div>
						</div>
						<div class="text">
							<div>
								<strong style="font-size:12px">Change Password</strong>
							</div>
						</div>
					</a>
					
					<!--<a href="/index/account/paypassword.html" class="listItem">-->
					<!--	<div class="image">-->
					<!--		<div class="iconBox bg-danger">-->
					<!--			<i class="icon ion-ios-lock"></i>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--	<div class="text">-->
					<!--		<div>-->
					<!--			<strong style="font-size:12px">Withdrawal Password</strong>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--</a>-->
	<!--<a href="/index/account/lang.html" class="listItem">-->
	<!--					<div class="image">-->
	<!--						<div class="iconBox bg-danger">-->
	<!--						    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">-->
	<!--			<i class="fa-sharp fa-solid fa-earth-americas"></i>-->
	<!--						</div>-->
	<!--					</div>-->

	<!--					<div class="text">-->
	<!--						<div>-->
	<!--							<strong style="font-size:12px">Language</strong>-->
	<!--						</div>-->
	<!--					</div>-->
	<!--				</a>-->
					<a href="#" class="listItem">
						<div class="image">
							<div class="iconBox bg-danger">
								<img src="{{asset ('core/img/about.png')}}" alt="">
							</div>
						</div>

						<div class="text">
							<div>
								<strong style="font-size:12px">About Us</strong>
							</div>
						</div>
					</a>
				

					<!--<a href="/index/account/profile.html" class="listItem">-->
					<!--	<div class="image">-->
					<!--		<div class="iconBox bg-danger">-->
					<!--			<img src="/static/img/about.png" alt="">-->
					<!--		</div>-->
					<!--	</div>-->

					<!--	<div class="text">-->
					<!--		<div>-->
					<!--			<strong>Profile</strong>-->
					<!--		</div>-->
					<!--	</div>-->
					<!--</a>-->
					
					
				</div>
				<!-- * listview -->
				<div class="my-4 pb-5">
					<a href="{{route ('user.logout')}}" class="btn btn-primary btn-block">
						Exit					</a>
				</div>
			</div>


		</div>
		
		
		
		@endsection
		