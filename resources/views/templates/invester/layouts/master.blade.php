@extends($activeTemplate.'layouts.app')
@section('panel')

		<link rel="stylesheet" href="{{asset ('core/static/css/style3.css')}}">
		<link rel="stylesheet" href="{{asset ('core/static/css/main-css.css')}}">
		<link rel="stylesheet" type="text/css" href="{{asset ('core/static/css/mui.min.css')}}">
		<!-- 	<link rel="stylesheet" href="/static/css/style1.css"> -->
		<meta name="viewport" content="initial-scale=1, maximum-scale=1, width=device-width">

	


            @yield('content')


		<script src="{{asset ('core/static/js/customer_icon.js')}}"></script>
		<script src="{{asset ('core/static/js/jquery-3.4.1.min.js')}}"></script>
		<script src="{{asset ('core/static/js/owl.carousel.min.js')}}"></script>
		<script src="{{asset ('core/static/js/app.js')}}"></script>
		<script src="{{asset ('core/static/js/mui.min.js')}}"></script>

		<script>
		
              $(function() {
                //获得当前<ul>
                var $uList = $(".gundong ul");
                var timer = null;
                var h=0;
                //触摸清空定时器
                $uList.hover(function () {
                        clearInterval(timer);
                    },
                    function () { //离开启动定时器
                        timer = setInterval(function () {
                            scrollList($uList);
                        }, 1300);
                    }).trigger("mouseleave"); //自动触发触摸事件
                //滚动动画
                function scrollList(obj) {
                    //获得当前<li>的高度
                    var scrollHeight = $("ul li:first").height();
                    var s=$("ul li").length;
                    h-=scrollHeight;
                    //滚动出一个<li>的高度
                    $uList.stop().animate({
                            marginTop: h
                        }, 1500,
                        function () {
                            //动画结束后，将当前<ul>marginTop置为初始值0状态，再将第一个<li>拼接到末尾。
                            // $uList.css({
                            //     marginTop: 0
                            // }).find("li:first").appendTo($uList);
                        });
                }
            });
		</script>


		<script type="text/javascript">
			(function($) {
				if ($.fn.owlCarousel) {
					var welcomeSlider = $('.hero-slides');
					welcomeSlider.owlCarousel({
						items: 1,
						loop: true,
						autoplay: true,
						dots: false,
						margin: 0,
						nav: false,
						smartSpeed: 1000,
						autoplayTimeout: 5000
					})
				}
			})(jQuery);

			var isview=0;
			if(isview==1){
				 $("#gui_kai").show();
			}
			$('#g_close').click(function() {
				$("#gui_kai").hide();
			});

			function signIn() {
                $.ajax({
					type: 'GET',
					url: "/index/index/sign_in.html",
					data:{},
					dataType: 'json',
					async:false,
					success: function (data) {
						if(data.code == 0) {
                            mui.alert(data.success);
						} else {
                            mui.alert(data.success);
						}
					},
					error: function (xhr, type) {
                        mui.alert("请求失败！");
					}
				});
			}
		</script>
	</body>
</html>

		
		<!-- * appCapsule -->
		<section class="panel-space"></section>
				<div class="appBottomMenu">
			<div class="item active" >
				<a href="{{route ('user.home')}}">
					<p>
						<i class="icon ion-ios-home"></i>
						<span>Homepage</span>
					</p>
				</a>
			</div>
			<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
			<div class="item ">
				<a href="{{route ('user.invest.log')}}">
					<p>
						<i class="icon ion-md-radio-tower">
		<iconify-icon icon="ri:charging-pile-2-line"></iconify-icon>
						</i>
						<span>Equipment</span>
					</p>
				</a>
			</div>
			<div class="item ">
				<a href="{{ route('user.referrals') }}" class="icon toggleSidebar">
					<p>
						<i class="icon ion-ios-people"></i>
						<span>Team</span>
					</p>
				</a>
			</div>
			<div class="item ">
				<a href="{{ route('user.profile.setting') }}">
					<p>
						<i class="icon ion-ios-person"></i>
						<span>Me</span>
					</p>
				</a>
			</div>
		</div>
		
		

		<style type="text/css">
			.guize_html {
				width: 90%;
				height: auto;
				border-radius: 4px;
				background-color: #ebb73d;
				color: #000;
				text-align: center;
				font-size: 12px;
				margin: auto;
				margin-top: 100px;
				/* 		padding-bottom: 20px; */
			}

			.guize_html p {
				font-size: 12px;
				padding: 0 16px;
				text-align: left;
				text-indent: 2em
			}

			.guize_html_nei {
				color: #0e1a32;
				min-height: 200px;
				overflow-y: auto;
				max-height: 300px;
				height: 200px;
				display: block;
				overflow-y: scroll;
			}

			.btnyu {
				display: block;
				margin: 10px auto;
				height: 40px;
				border-radius: 0 0 4px 4px;
				background-color: #c79829;
				color: #000;
				text-align: center;
				line-height: 40px;
				cursor: pointer;
			}

			.overfloat {
				position: fixed;
				top: 0;
				left: 0;
				z-index: 9;
				display: none;
				width: 100%;
				height: 100%;
				background-color: rgba(1, 1, 1, .5)
			}

			.guize_html img {
				width: 75px;
				margin-top: -30px;
				background: #182730;
				border-radius: 50%;
			}
		</style>

@endsection
