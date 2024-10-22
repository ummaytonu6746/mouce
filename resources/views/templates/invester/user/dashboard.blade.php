@extends($activeTemplate.'layouts.master')
@section('content')

	<style type="text/css">
			#appCapsule{background: none;}
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
				padding: 16px 10px;
				border-radius: 10px;
				margin: 0 0 10px;
				box-shadow: 0px 0px 9px 2px rgba(0, 0, 0, 0.04);
				background: #f8f8f9;
			}

			.flex-column img {
				max-width: 50px;
				max-height: 50px;
			}


			.resources-card-wrapper {
				display: -webkit-box;
				display: -ms-flexbox;
				display: flex;
				-ms-flex-pack: distribute;
				justify-content: space-around;
			}

			.buy-card {
				background: #f8f8f9;
				width: 48%;
				padding: 20px 15px;
				border-radius: 10px;
				-webkit-box-shadow: 0px 0px 9px 1px rgba(0, 0, 0, 0.1);
				box-shadow: 0px 0px 9px 1px rgba(0, 0, 0, 0.1);
			}

			.rien {
				float: right;
				margin-top: -26px;
			}

			.uine {
				color: #868D9A;
			}

			.uine span {
				display: block;
				font-size: 16px;
				color: #000;
				padding-top: 2px;
			}

			.news-today-wrapper {
				background: linear-gradient(180deg, #0160bf 0%, #ffffff 100%);
				background-size: 100%;
				

			}

			.appHeader {
				height: 56px;
				display: inline-flex;
				justify-content: center;
				align-items: center;
				position: absolute;
				top: 0;
				left: 0;
				right: 0;
				z-index: 9990;

			}

			.postCarousel .item .title {
				color: #000;
			}

			.coyu {
				background: #0160bf;
				width: ;
				text-align: center;
				color: #fff;
				border-radius: 30px;
				font-size: 12px;
				padding: 2px 10px;
				float: left;
				margin-left: 6px;
				margin-top: 6px;

			}

			/* 	.owl-item {
				background-color: #f9f9f9;
				padding: 4px;
				border-radius: 4px;
				padding-bottom: 10px;
			} */
			.text footer {
				display: flex;
				font-size: 14px;
				align-content: center;
				color: #8D95A0;
				padding-left: 6px;
			}

			.sectionTitle .title h1 {
				font-size: 28px;
				font-weight: 900;
				color: #1B2C42;
				margin: 0;
				padding-right: 20px;
			}

			.itema a {
				display: flex;
			}

			.aui-palace {
				position: relative;
				overflow: hidden;
			}

			.aui-palace-grid {
				position: relative;
				float: left;
				padding: 1px;
				width: 25%;
				box-sizing: border-box;
				margin-bottom: 15px;
			}

			.aui-palace-ssion {
				position: relative;
				float: left;
				padding: 1px;
				width: 33.33%;
				box-sizing: border-box;
				margin-bottom: 15px;
			}

			.aui-palace-grid-icon {
				width: 50%;
				margin: 0 auto;
			}

			.aui-palace-ssion .aui-palace-grid-icon {
				width: 80%;
				margin: 0 auto;
			}

			.aui-palace-grid-icon img {
				display: block;
				width: 100%;
				height: 100%;
				border: none;
			}

			.aui-palace-grid-text {
				display: block;
				text-align: center;
				color: #fff;
				font-size: 14px;
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
				padding-top: 10px;
			}

			.aui-palace-grid-text h2 {
				font-size: 14px;
				font-weight: normal;
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
		<div class="kefu_menu" id="back-button">
			<img class="kefu_menu_image" onclick="window.location.href='https://t.me/xcubesoluiton'"  src="{{ASSET ('core/img/kf.png')}}">
		</div><!-- 浮动 -->

		<div class="appHeader">
			<div class="pageTitle">
				<img src="{{ asset(getImage(getFilePath('logoIcon').'/logo_2.png')) }}" style="height:30px;">
		
			</div>
		</div>
		<div class="news-today-wrapper pt-2">
			<div class="container">
				<div class="hero-slides owl-carousel">
		<div class="single-hero-slide" style="background-image:url({{asset ('core/img/120bae01893dbf34961ca51e9638b973.png')}})"></div>
					<div class="single-hero-slide" style="background-image:url({{asset ('core/img/1ab6a0c5915b64146fbeda3471e54636.png')}})"></div>
					<div class="single-hero-slide" style="background-image:url({{asset ('core/img/de5fc88f970d45aebb4316dd08f2b392.png')}})"></div>
					<!--<div class="single-hero-slide" style="background-image:url(/uploads/20230212/b0267ee695599cf27264de262b722210.png)"></div>-->
				</div>
				<div class="owl-controls clickable">
					<div class="owl-pagination">
						<div class="owl-page"><span class=""></span></div>
						<div class="owl-page active"><span class=""></span></div>
					</div>
				</div>
			</div>
		</div>
		<div class="aui-palace mt-3">
			<a href="{{route ('user.deposit.index')}}" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="{{asset ('core/img/homecoi_2.png')}}" alt="">
				</div>
				<div class="aui-palace-grid-text">
					<h2>
			  	Recharge					    </h2>
				</div>
			</a>
			<a href="{{route ('user.withdraw')}}" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="{{asset ('core/img/homecoi_3.png')}}" alt="">
				</div>
				<div class="aui-palace-grid-text">
					<h2>Withdrawl</h2>
				</div>
			</a>
			<a href="{{ route('user.referrals') }}" class="aui-palace-grid">
				<div class="aui-palace-grid-icon">
					<img src="{{asset ('core/img/homecoi_5.png')}}" alt="">
				</div>
				<div class="aui-palace-grid-text">
					<h2>Team</h2>
				</div>
			</a>
			<div class="aui-palace-grid" onclick="window.location.href='{{ route('user.transactions') }}'">
				<div class="aui-palace-grid-icon">
					<img src="{{asset ('core/img/lihe.png')}}" alt="">
				</div>
				<div class="aui-palace-grid-text">
					<h2>Invite</h2>
				</div>
			</div>
		</div>
	
				<!--<div class="sectionTitle mb-2">-->
					<!--<div class="text-muted">NEWS</div>-->
				<!--	<div class="title">-->
				<!--		<h1>Today</h1>-->
						<!--<a href="/index/message/index.html">View All</a>-->
				<!--	</div>-->
				<!--</div>-->
				<!--<div class="itemList">-->
					<!---->
					<!--<div class="item itema">-->
						<!--<a href="/index/message/article/id/150.html">-->
							<!--<div class="image">-->
								<!--<img src="/uploads/20230213/da8708018f70d5758c1a9a841dcd9e65.jpg" alt="image">-->
							<!--</div>-->
							<!--<div class="text">-->
								<!--<h4 class="title">Medical Device Investment Opportunities</h4>-->
								<!--<div class="text-muted">13/10/22 11:03:35</div>-->
							<!--</div>-->
						<!--</a>-->
					<!--</div>-->
					<!---->
					<!--<div class="item itema">-->
						<!--<a href="/index/message/article/id/149.html">-->
							<!--<div class="image">-->
								<!--<img src="/uploads/20230213/fb9f505d4745371eee61323f3e8987af.png" alt="image">-->
							<!--</div>-->
							<!--<div class="text">-->
								<!--<h4 class="title">Indian medical equipment is a sunrise industry</h4>-->
								<!--<div class="text-muted">21/03/22 09:33:20</div>-->
							<!--</div>-->
						<!--</a>-->
					<!--</div>-->
					<!---->
					<!--<div class="item itema">-->
						<!--<a href="/index/message/article/id/148.html">-->
							<!--<div class="image">-->
								<!--<img src="/uploads/20230213/5142d19d8bc0016fd5528de1aad8e5b3.png" alt="image">-->
							<!--</div>-->
							<!--<div class="text">-->
								<!--<h4 class="title">EVER Company Introduction</h4>-->
								<!--<div class="text-muted">04/01/24 21:03:20</div>-->
							<!--</div>-->
						<!--</a>-->
					<!--</div>-->
					<!---->
					<!--<div class="item itema">-->
						<!--<a href="/index/message/article/id/147.html">-->
							<!--<div class="image">-->
								<!--<img src="/uploads/20230213/3487debe3f97e4cfa966d360cf8c3e1a.jpg" alt="image">-->
							<!--</div>-->
							<!--<div class="text">-->
								<!--<h4 class="title">Fresenius【United Medical Development】</h4>-->
								<!--<div class="text-muted">02/04/21 10:48:10</div>-->
							<!--</div>-->
						<!--</a>-->
					<!--</div>-->
					<!---->
				<!--</div>-->

				<!--<div class="appContent pb-0 mt-1" style="height: 225px; overflow: hidden;">-->
				<!--	<div id="wrap" class="mt-1 gundong">-->

				<!--		<ul class="transaction-list list-unstyled ">-->
				<!--		-->
				<!--		</ul>-->
				<!--	</div>-->
				<!--</div>-->

			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		  <style type="text/css">
        #tit span.select {
            color: #fff;
            border-radius: 4px;
            background: #319cdb;
        }

        .listView a.listItem {
            background-image: none;
        }

        .text button {
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

    <div id="appCapsule" class="pb-2">
        <div id="tit">
                        <span id="appCapsule1" style="width:50%" class="select" data-id="11">
                Memberships             </span>
                        <span onclick="window.location.href='{{route ('user.invest.log')}}'" style="width:50%"  class="select" data-id="my">My Device</span>
        </div>
        <div style="clear: both;"></div>
        <div class="appContent pb-0 mt-1 pt-1">
            <div class="listView detailed" style="padding-bottom: 8px;">
                
                              @php
                            $plans = App\Models\Plan::with('timeSetting')
                                ->whereHas('timeSetting', function ($time) {
                                    $time->where('status', 1);
                                })
                                ->where('status', 1)
                                ->get();
                            $gatewayCurrency = null;
                            if (auth()->check()) {
                                $gatewayCurrency = App\Models\GatewayCurrency::whereHas('method', function ($gate) {
                                    $gate->where('status', 1);
                                })
                                    ->with('method')
                                    ->orderby('method_code')
                                    ->get();
                            }
                        @endphp
                  
                    @foreach ($plans as $plan)
                                     <a  class="listItem">
                               <div class="image">
                                         <img src="{{asset ('core/img/pl.png')}}" alt="avatar">
                                    <i>Hot</i>
                                     </div>
                                    <div class="text">
                                  
                                  <div >
                                      
                                      
                                       <strong>Plan<span> {{ __($plan->name) }}</span></strong>
                                      
                                      
                                      
                                      
                                              <strong>Price <span> @if ($plan->fixed_amount == 0)
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->minimum) }} -
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->maximum) }}
                                                @else
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->fixed_amount) }}
                                                @endif</span></strong>
                                        
                                               <strong>Daily Profit<span>  {{ $plan->interest_type != 1 ? $general->cur_sym : '' }}{{ showAmount($plan->interest) }}{{ $plan->interest_type == 1 ? '%' : '' }}</span></strong>
                                             <strong>Validity Period <span> {{ __($plan->repeat_time) }} {{ __($plan->timeSetting->name) }} </span></strong>
                                              <strong>Total Income <span> @if ($plan->lifetime == 0)
                                @if ($plan->capital_back == 1)
                                    @lang('capital') +
                                @endif
                                {{ __($plan->interest * $plan->repeat_time) }}{{ $plan->interest_type == 1 ? '%' : ' ' . __($general->cur_text) }}
                            @else
                                @lang('Unlimited')
                            @endif</span></strong>
                                         </div>';
                                          <form action="{{ route('user.invest.submit') }}" method="post">
                                       @csrf
                                       <input type="hidden" name="plan_id" value="{{ __($plan->id) }}">
                                       <input type="hidden" name="wallet_type" value="deposit_wallet">
                                       <input type="hidden" name="amount" value="{{ getAmount($plan->fixed_amount,0) }}">
                             
                                      
                                      
                                       <button type="submit"        >@if ($plan->fixed_amount == 0)
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->minimum) }} -
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->maximum) }}
                                                @else
                                                    {{ __($general->cur_sym) }}{{ showAmount($plan->fixed_amount) }}
                                                @endif </button>
                                   
                                       </div>
                                  </form>
                                  </a>
                                
           
                  
                  
                                @endforeach
           
                
                
            </div>
        </div>
    </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="overfloat" id="gui_kai" style="display: none;">
			<div class="guize_html">
				<span class="guize_html_nei">
					<h5><br>Platform announcement</h5>
					<p>
											</p>
				</span>
				<div id="g_close" class="btnyu">
					Ok
				</div>
			</div>
		</div>


		<!-- 弹窗代码开始 -->
		<!--弹框样式-->
		<style>
			.colse_btn {
				display: block;
				position: absolute;
				bottom: 8%;
				left: 24%;
				background: #0160bf;
				color: #FFF;
				text-align: center;
				font-weight: bold;
				font-size: 17px;
				line-height: 40px;
			
				border-radius: 32px;
				width: 50%;
			}

			.web_notice {
				position: fixed;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.3);
				z-index: 99999;
			}

			.div_notice {
				position: fixed;
				top: 50%;
				left: 50%;
			    width: 80%;
				height: 70%;
				overflow-y: auto;
				background: #FFF;
				transform: translate(-50%, -50%);
				border-radius: 20px;
				padding: 20px 15px;
			}
			.title_notice {
				font-weight: bold;
				text-align: center;
				font-size: 25px;
			}

			.content_notice {
				font-size: 16px;margin-top: 26px;line-height: 30px;color: #999;
			}
		</style>
		<div class="web_notice" style="padding:30px">
			<div class="div_notice">
				<h3 class="title_notice">Notice</h3>
				<div class="content_notice" >
					<p><span style="font-size:12px"></span></p><p></p><p><span style="text-wrap: nowrap;font-size:12px;;font-family:微软雅黑, Microsoft YaHei"></span></p><h6 style="text-wrap: wrap;"><span style="font-size:16pxfont-family:微软雅黑, Microsoft YaHeifont-family:微软雅黑, Microsoft YaHei;font-size:16px"><span style="background-color: rgb(255, 255, 255);"><span style="color:#548dd4"><span style="color: rgb(84, 141, 212); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: medium; text-wrap: wrap;"></span></span></span></span></h6><p><span style="font-family:arial black, avant garde"><span style="font-size:16px"><span style="color:#8db3e2;"></span></span></span></p><p><span style="font-size:16px;font-family:andale mono"><strong>Sign up for free: ₹ 230<br/></strong></span></p><p><span style="font-size:16px;font-family:andale mono"><strong>Invitation registration: ₹12 per person<br/>Invitation investment: 25% for level 1, 3% for level 2, 2% for level 3, up to 30%<br/>Sign-in reward: ₹ 5<br/>There are also generous team rewards, join the official channel to learn more</strong></span></p><p style="text-align: center;"><a href="https://t.mexcubesoluiton" target="_blank"><img src="https://evar.cc/uploads/20231023/fb37f8ee1231d1635382799dbea67526.png" style="width: 67px; height: 69px;"/></a></p><p style="text-align: center;"><a href="https://t.me/xcubesoluiton" target="_blank">EVAR Official Channel</a></p><p><span style="font-size:16px"><span style="background-color: rgb(255, 255, 255); color: rgb(84, 141, 212);font-family:微软雅黑, Microsoft YaHei"></span></span></p>				</div>
			
			</div>
				<a class="colse_btn" onclick="javascript:document.querySelector('.web_notice').remove()">OK</a>
		</div>
		<!-- 弹窗代码结束 -->
@endsection