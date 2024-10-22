@extends($activeTemplate . 'layouts.master')
@section('content')
    <style type="text/css">
        #tit span.select {
            color: #fff;
            border-radius: 4px;
            background: #319cdb;
        }

        .listView a.listItem {
            background-image: none;
        }

        .text p {
            background: #0160bf;
            width: 100px;
            text-align: center;
            color: #fff;
            border-radius: 30px;
            font-size: 12px;
            margin-top: 10px;
        }

        .appContent {
            padding: 0 10px 20px 10px;
            background: #f3f3f3;
        }

        #tit {
            background-color: #000;
        }

        .text-muted {
            color: #8D95A0;
            font-size: 14px;
            font-weight: 400;
            display: initial;
            float: right;
        }

        #tit {
            height: auto;
            width: 100%;
            background: none;
            border-radius: 10px;
            white-space: nowrap;
            display: flex;
            overflow: auto;
            margin-top: 10px;
        }

        .postItem .imageWrapper .image {
            width: 100%;
            border-radius: 6px;
            height: auto;
        }

        #tit span {
            float: left;
            height: 34px;
            line-height: 34px;
            width: auto;
            text-align: center;
            color: #333;
            margin: 4px;
            background: #ffffff;
            border-radius: 8px;
            padding: 0 16px;
        }

        .dropload-down {
            width: 100%;
            padding-top: 50px;
            margin: 0 auto;
            line-height: 1.6em;
            font-size: 14px;
            text-align: center;
            color: #968b8b;
            background: #fff;
        }

        .listItem i {
            background-color: #0160bf;
            padding: 2px 10px;
            position: absolute;
            font-style: normal;
            top: 0px;
            left: 0;
            color: #fff;
        }

        .listItem span {
            float: right;
            color: #333;
        }

        .kefu_menu {
            width: 70px;
            height: 70px;
            position: fixed;
            border-radius: 55px;
            z-index: 999999;
            right: 10px;
            top: 50%;
            background-color: white;
        }

        .kefu_menu_image {
            width: 70px;
            height: 70px;
        }
    </style>
</head>

<body>
    <!-- <div class="kefu_menu" id="back-button" >
        <img class="kefu_menu_image" id="kefu_menu" src="/static/img/kf.png">
    </div> -->
    <!-- 浮动 -->

    <!-- Page loading -->
    <div class="loading">
        <div class="spinner-grow"></div>
    </div>
    <!-- * Page loading -->

    <!-- App Header -->
    <!-- <div class="appHeader">-->
    <div class="appHeader" style="background-color:#0160bf;">
        <div class="left">
            <!-- <a href="javascript:;" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a> -->
        </div>
        <div class="pageTitle">Equipment</div>
    </div>
    <div id="appCapsule" class="pb-2">
        <div id="tit">
                       <span id="appCapsule1" style="width:50%" class="select" data-id="11">
                Device Information                </span>
                        <span style="width:50%" id="mp" class="select" data-id="my">My Device</span>
        </div>
        
        
        
        
        <div style="clear: both;"></div>
        <div class="appContent pb-0 mt-1 pt-1">
            <div class="listView detailed" style="padding-bottom: 8px;">
                
                
                
    <style>
.plan-item-two,
.plan-name,
.plan-desc,
.plan-label,
.plan-value,
.closed-invest {
    color: #FFF;
    background-color: #319cdb;
}

.capital-back {
    color: #fff;
    font-size: 10px;
}
body {
    background-color: #070824; 
    color: #fff;
    font-family: Arial, sans-serif; 
}

a {
    color: #ffca28; 
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}

.card-content {
    background-color: #000000;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

.plan-item-two,
.plan-inner-div {
    border: 1px solid #fff;
    border-radius: 5px;
    padding: 10px;
    margin: 10px;
}

.button {
    background-color: #ffca28;
    color: #070824;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

.button:hover {
    background-color: #fff;
    color: #070824;
}

.pagination {
    display: flex;
    list-style: none;
}

.pagination li {
    margin: 5px;
}
</style>
                @forelse($invests as $invest)
                    @php
                        if ($invest->last_time) {
                            $start = $invest->last_time;
                        } else {
                            $start = $invest->created_at;
                        }
                    @endphp
                    <div class="plan-item-two">
                        <div class="plan-info plan-inner-div">
                            <div class="d-flex align-items-center gap-3">
                                @if ($invest->status == 1)
                                    <svg class="custom-progress">
                                        <circle class="progress-circle" cx="20" cy="22" r="16" style="stroke-dasharray: 100; stroke-dashoffset: calc(100 - (({{ diffDatePercent($start, $invest->next_time) }} * 100)/100))" ; />
                                        <circle class="bg-circle" cx="20" cy="22" r="16" style="stroke-dasharray: 100; stroke-dashoffset: 0"; />
                                    </svg>
                                @else
                                    <span class="closed-invest">
                                        <i class="las la-ban text-danger"></i>
                                        <span>@lang('Closed')</span>
                                    </span>
                                @endif

                                <div class="plan-name-data">
                                    <div class="plan-name fw-bold">{{ __($invest->plan->name) }} - @lang('Every') {{ __($invest->time_name) }} {{ $invest->plan->interest_type != 1 ? $general->cur_sym : '' }}{{ showAmount($invest->plan->interest) }}{{ $invest->plan->interest_type == 1 ? '%' : '' }}
                                        @lang('for') @if ($invest->plan->lifetime == 0)
                                            {{ __($invest->plan->repeat_time) }} {{ __($invest->plan->time_name) }}
                                        @else
                                            @lang('LIFETIME')
                                        @endif
                                    </div>
                                    <div class="plan-desc">@lang('Invested'): <span class="fw-bold">{{ showAmount($invest->amount) }} {{ $general->cur_text }} @if ($invest->capital_status)
                                                <small class="capital-back"><i>(@lang('Capital will be back'))</i></small>
                                            @endif </span></div>
                                </div>
                            </div>
                        </div>
                        <div class="plan-start plan-inner-div">
                            <p class="plan-label">@lang('Start Date')</p>
                            <p class="plan-value date">{{ showDateTime($invest->created_at, 'M d, Y h:i A') }}</p>
                        </div>
                        <div class="plan-inner-div">
                            <p class="plan-label">@lang('Next Return')</p>
                            <p class="plan-value">{{ showDateTime($invest->next_time, 'M d, Y h:i A') }}</p>
                        </div>
                        <div class="plan-inner-div text-end">
                            <p class="plan-label">@lang('Total Return')</p>
                            <p class="plan-value amount"> {{ $general->cur_sym }}{{ showAmount($invest->interest) }} x {{ $invest->return_rec_time }} = {{ showAmount($invest->paid) }} {{ $general->cur_text }}</p>
                        </div>
                    </div>
                @empty
                    <div class="accordion-body text-center bg-white p-4">
                      		
	    
     <div class="container">
		<!-- Page loading -->
		<div class="loading" >
			<div class="spinner-grow"></div>
		</div>
		<!-- * Page loading -->

		
							
						
							<div   id="example1" class="listView iconed" style="margin-top:10px;margin-bottom:5px;background: linear-gradient(90deg, #070824 0%, #000000 50%, #070824 100%);">
					<div class="card-content card2">

		
					
																						</h6>
									<center  style="color: #fff;">Not Found Device Data</center>
							</div>
						
						</div>

					</div>
				</div>
						
						
    	</div>
    
    	</div>
                    </div>
                @endforelse
            </div>
            <div class="mt-3">
                {{ $invests->links() }}
            </div>
        </div>
    </div>

@push('style')
    <style>
        .custom-progress {
            max-width: 40px !important;
            max-height: 40px;
            transform: rotate(-90deg);
        }

        .custom-progress .bg-circle {
            stroke: #00000011;
            fill: none;
            stroke-width: 4px;
            position: relative;
            z-index: -1;
        }

        .custom-progress .progress-circle {
            fill: none;
            stroke: hsl(var(--base));
            stroke-width: 4px;
            z-index: 11;
            position: absolute;
        }

        .expired-time-circle {
            position: relative;
            border: none !important;
            height: 38px;
            width: 38px;
            margin-right: 7px;
        }

        .expired-time-circle::before {
            position: absolute;
            content: '';
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 50%;
            border: 4px solid #dbdce1;
        }

        .expired-time-circle.danger-border .animation-circle {
            border-color: hsl(var(--base)) !important;
        }

        .animation-circle {
            position: absolute;
            top: 0;
            left: 0;
            border: 4px solid hsl(var(--base));
            height: 100%;
            width: 100%;
            border-radius: 150px;
            transform: rotateY(180deg);
            animation-name: clipCircle;
            animation-iteration-count: 1;
            animation-timing-function: cubic-bezier(0, 0, 1, 1);
            z-index: 1;
        }

        .account-wrapper .left .top {
            margin-top: 0;
        }

        .account-wrapper .left,
        .account-wrapper .right {
            width: 100%;
        }

        .account-wrapper .right {
            padding-left: 0;
            margin-top: 35px;
        }

        @keyframes clipCircle {
            0% {
                clip-path: polygon(50% 50%, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%, 50% 0%);
                /* center, top-center*/
            }

            12.5% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 0%, 0% 0%, 0% 0%, 0% 0%, 0% 0%, 0% 0%, 0% 0%);
                /* center, top-center, top-left*/
            }

            25% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 50%, 0% 50%, 0% 50%, 0% 50%, 0% 50%, 0% 50%);
                /* center, top-center, top-left, left-center*/
            }

            37.5% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 0% 100%, 0% 100%, 0% 100%, 0% 100%, 0% 100%);
                /* center, top-center, top-left, left-center, bottom-left*/
            }

            50% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 50% 100%, 50% 100%, 50% 100%, 50% 100%, 50% 100%);
                /* center, top-center, top-left, left-center, bottom-left, bottom-center*/
            }

            62.5% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 50% 100%, 100% 100%, 100% 100%, 100% 100%, 100% 100%);
                /* center, top-center, top-left, left-center, bottom-left, bottom-center, bottom-right*/
            }

            75% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 50% 100%, 100% 100%, 100% 50%, 100% 50%, 100% 50%);
                /* center, top-center, top-left, left-center, bottom-left, bottom-center, bottom-right, right-center*/
            }

            87.5% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 50% 100%, 100% 100%, 100% 50%, 100% 0%, 100% 0%);
                /* center, top-center, top-left, left-center, bottom-left, bottom-center, bottom-right, right-center top-right*/
            }

            100% {
                clip-path: polygon(50% 50%, 50% 0%, 0% 0%, 0% 50%, 0% 100%, 50% 100%, 100% 100%, 100% 50%, 100% 0%, 50% 0%);
                /* center, top-center, top-left, left-center, bottom-left, bottom-center, bottom-right, right-center top-right, top-center*/
            }
        }

        .capital-back {
            font-size: 10px;
        }

        .closed-invest {
            max-width: 40px !important;
            max-height: 40px;
            text-align: center;
        }
    </style>
@endpush

@push('script')
    <script>
        let animationCircle = $('.animation-circle');
        animationCircle.css('animation-duration', function() {
            let duration = ($(this).data('duration'));
            return duration;
        });
    </script>
@endpush

                
                
                
                
                
                
                
                
            </div>
        </div>
    </div>

   
   
   
   
   
   
   
   
   
   
   
@endsection
