@extends($activeTemplate . 'layouts.master')
@section('content')
   

		<style type="text/css">
			.fosm {
				font-size: 16px;
				padding-left: 4px;
				color: #868D9A;
				font-weight: 100;
			}

			.txt-green {
				background-color: #29a93f;
				color: #fff;
				padding: 5px 8px;
				border-radius: 4px;
			}

			.txt-red {
				background-color: #F34954;
				color: #fff;
				padding: 5px 8px;
				border-radius: 4px;

			}

			.transaction-list li {
				padding: 10px 4px;
				margin: 0 0 10px;
				box-shadow: 0px 0px 9px 2px rgba(0, 0, 0, 0.04);
			}

			.d-flex {
				padding: 0  10px 0 0;
			}

			#tit {
				margin: 0 2%;
				height: 40px;
				width: auto;
				background-color: #e9ecf2;
				border-radius: 2px;

			}

			#tit span {
				float: left;
				width: 32%;
				text-align: center;
				color: #000;
				margin: 2px;
				height: 36px;
				line-height: 36px;
				padding: 0 4px;
			}

			#tit span.select {
				border-radius: 0;
				color: #000;
				background: #fff;
				height: 36px;
				line-height: 36px;
			}
		</style>
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
				<a href="javascript:;" class="icon goBack">
					<i class="icon ion-ios-arrow-back"></i>
				</a>
			</div>
			<div class="pageTitle">Withdraw Details</div>
		</div>

		<div id="appCapsule" class="pb-2">
			<!--<div id="tit" class=" mt-2">-->

				<!--<span class="select" data-id="3">Other</span>-->
				<!--<span data-id="1">Recharge</span>-->
				<!--<span data-id="2">Withdraw</span>-->
			<!--</div>-->
			<div class="appContent pb-0 mt-1">
				<div id="wrap" class="mt-1">

					<ul class="transaction-list list-unstyled mt-2">
					      @forelse($withdraws as $withdraw)
					    
					    
					    
	<li>
									<div class="d-flex align-items-center justify-content-between">
										<div class="d-flex align-items-center">
										<div class="ml-10">
											<h4 class="coin-name">  @php echo $withdraw->statusBadge @endphp </h4>
											<small class="text-muted">{{showDateTime($withdraw->created_at,'M d Y @g:i:a')}}</small>
										</div>
										</div>
									<div class="d-flex align-items-center">
												<div class="ml-10">
											<h4 class="coin-name">{{ showAmount($withdraw->amount ) }} {{ $general->cur_text }}</h4>
									</div>
										</div>
									</div>
									</li>
									       @empty
                <div class="accordion-body text-center bg-white">
                    <h4 class="text--muted"><i class="far fa-frown"></i> {{ __($emptyMessage) }}</h4>
                </div>
            @endforelse

					</ul>
				</div>
			</div>
		</div>
		@endsection