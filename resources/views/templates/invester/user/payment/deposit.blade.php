@extends($activeTemplate . 'layouts.master')
@section('content')
   
  <style>
        .quick_amount p {
            display: inline-block;
            text-align: center;
            font-size: 16px;
            border: 1px #dcdada solid;
            color: #000;
            width: 32%;
            background: #f7f7f7;
            border-radius: 4px;
            padding: 6px 0;
        }

        .quick_amount {
            width: 100%;
        }

        .chen {
            font-weight: 600;
        }

        .chen i {
            display: block;
            font-size: 12px;
            font-style: normal;
            font-weight: 100;
        }

        .quick_amount p.active {
            border: #0160bf 1px solid;
            color: #fff;
            border-radius: 4px;
            background: #0160bf;

        }

        .quick_method p {
            display: inline-block;
            text-align: center;
            font-size: 16px;
            border: 1px #dcdada solid;
            color: #000;
            width: 32%;
            background: #f7f7f7;
            border-radius: 4px;
            padding: 6px 0;
        }

        .quick_method {
            width: 100%;
        }

        .quick_method p.active {
            border: #0160bf 1px solid;
            color: #fff;
            border-radius: 4px;
            background: #0160bf;

        }

        .btn-lg {
            height: 34px;
            padding: 0px 0px;
            font-size: 14px;
            border-radius: 30px;
        }

        .appContent {

            border-radius: 16px 16px 0 0;
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
            <a href="{{route ('user.home')}}" class="icon goBack">
                <i class="icon ion-ios-arrow-back"></i>
            </a>
        </div>
        <!-- 使用ThinkPHP多语言模式 -->
        <div class="pageTitle">Recharge</div>
        <div class="right">
            <a  class="link">  
                <img style="width: 30px;" src="">
            </a>
        </div> 
    </div>
    <div id="appCapsule" class="pb-2">

        <div class="appContent pb-0 mt-3">
<form action="{{ route('user.deposit.insert') }}" method="post">
                            @csrf
                            <input type="hidden" name="currency">
   
     <div class="form-group">
                    <!-- 使用ThinkPHP多语言模式 -->
                    <label>Payment Channel</label>
                                       <select class="form-control" name="gateway" required>
                                            <option value="">@lang('Select One')</option>
                                            @foreach ($gatewayCurrency as $data)
                                                <option value="{{ $data->method_code }}" @selected(old('gateway') == $data->method_code)
                                                    data-gateway="{{ $data }}">{{ $data->name }}</option>
                                            @endforeach
                                        </select>
                
                </div>
   
   
   
   
   
   

                <div class="form-group">
                    <!-- 使用ThinkPHP多语言模式 -->
                    <label>Amount</label>
                    <input type="number" class="form-control"  name="amount"    placeholder="00.00" >
             
                </div>
                <div class="row form-group">
                    <div class="quick_method" style="display:none">
                                                <button  type="submit"     class="chen active" >Pay</button>
                                            </div>
                </div>

                                          
              

                <div>
                          
                                                    
                                                    
                    
                    <button type="submit"  class="btn btn-primary btn-lg btn-block">
                        <!-- 使用ThinkPHP多语言模式 -->
                        
                        Recharge                    </button>
                </div>

                <div class="form-group">
                    <br/>
                    <!-- 使用ThinkPHP多语言模式 -->
                    <label>Recharge Instructions:</label>
                    <div class="quick_method">
                        
                                                    
                                                   
                                                  
                                   
                        <span style="color: #0C0C0C">
                            1.The minimum recharge is 100  {{ __($general->cur_text) }}    and the recharge time is 7*24 hours.<br/>
                        2.f the account balance does not reach the account balance within 30 minutes of successful payment, please contact customer service.<br/>
                          3.Please complete the recharge within the platform.<br/>
                           4.The recharge amount must be consistent with the payment amount to avoid payment errors and losses.<br/>
                     5.If payment fails, please go back and click recharge again.<br/>
                         
                            <br/>
                        </span>
                    </div>
                </div>

            </form>

        </div>

    </div>
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/app.js"></script>
    <script src="/static/js/mui.min.js"></script>
    <script src="/static/js/mui.loading.js"></script>
    <script src="/static/js/base.js"></script>
    <script>
        var $amountInput = $('[id="amount"]');
        var $amountInput1 = $('[id="u_amount"]');
        var $amountInput2 = $('[id="u"]');
        var amount = '';

        $(".quick_amount p").off("click").on("click", function() {
            amount = $(this).attr('data-item');
            if (!$(this).hasClass('active')) {
                $(this).addClass('active').siblings().removeClass('active');
                $amountInput.val(amount);
                $amountInput1.val(amount*0.012);
            } else {
                $(this).removeClass('active');
                $amountInput.val('');
            }
        })

        $(".quick_method p").off("click").on("click", function() {
            $(this).addClass('active').siblings().removeClass('active')
            $("#pay_type").val($(this).attr('data-type'));
            if($(this).text()=='Usdt'){
                $amountInput2.css('display', 'block');
            }
            else{
                $amountInput2.css('display', 'none');
            }
        })

        $amountInput.on('input propertychange', function() {
            if ($(this).val() !== $('.quick_amount p.active').text()) {
                $('.quick_amount p').removeClass('active');
            }
        })

        function updateSecondInput() {
            // 获取第一个输入框的值
            var amount = document.getElementById("amount").value;
            // 将值乘以0.012
            var doubledAmount = parseFloat(amount) * 0.012;
            // 设置第二个输入框的值为乘以0.012后的值，保留四位小数
            document.getElementById("u_amount").value = doubledAmount.toFixed(4);
        }
        
        function FormSubmit1(target) {
	var form = $(target).attr('data-form');
	var data = $("#" + form).serialize();
	var url = $("#" + form).attr('action');
// 	$(target).attr('disabled',"disabled");
	mui.showLoading("loading...", "div");
	$.post(url, data, function (data) {
		mui.hideLoading();

		if (data.url) {
// 			mui.alert(data.msg, function () {
$(target).attr('disabled',null);
				window.location.href = data.url;
// 			})
		} else {
			
			$(target).attr('disabled',null);
			
			mui.alert(data.msg);
		}
		
	}, 'json')
}

    </script>

</body>

</html>
  @endsection

        @push('script')
            <script>
                (function($) {
                    "use strict";
                    $('select[name=gateway]').change(function() {
                        if (!$('select[name=gateway]').val()) {
                            $('.preview-details').addClass('d-none');
                            return false;
                        }
                        var resource = $('select[name=gateway] option:selected').data('gateway');
                        var fixed_charge = parseFloat(resource.fixed_charge);
                        var percent_charge = parseFloat(resource.percent_charge);
                        var rate = parseFloat(resource.rate)
                        if (resource.method.crypto == 1) {
                            var toFixedDigit = 8;
                            $('.crypto_currency').removeClass('d-none');
                        } else {
                            var toFixedDigit = 2;
                            $('.crypto_currency').addClass('d-none');
                        }
                        $('.min').text(parseFloat(resource.min_amount).toFixed(2));
                        $('.max').text(parseFloat(resource.max_amount).toFixed(2));
                        var amount = parseFloat($('input[name=amount]').val());
                        if (!amount) {
                            amount = 0;
                        }
                        if (amount <= 0) {
                            $('.preview-details').addClass('d-none');
                            return false;
                        }
                        $('.preview-details').removeClass('d-none');
                        var charge = parseFloat(fixed_charge + (amount * percent_charge / 100)).toFixed(2);
                        $('.charge').text(charge);
                        var payable = parseFloat((parseFloat(amount) + parseFloat(charge))).toFixed(2);
                        $('.payable').text(payable);
                        var final_amo = (parseFloat((parseFloat(amount) + parseFloat(charge))) * rate).toFixed(
                            toFixedDigit);
                        $('.final_amo').text(final_amo);
                        if (resource.currency != '{{ $general->cur_text }}') {
                            var rateElement =
                                `<span class="fw-bold">@lang('Conversion Rate')</span> <span><span  class="fw-bold">1 {{ __($general->cur_text) }} = <span class="rate">${rate}</span>  <span class="method_currency">${resource.currency}</span></span></span>`;
                            $('.rate-element').html(rateElement)
                            $('.rate-element').removeClass('d-none');
                            $('.in-site-cur').removeClass('d-none');
                            $('.rate-element').addClass('d-flex');
                            $('.in-site-cur').addClass('d-flex');
                        } else {
                            $('.rate-element').html('')
                            $('.rate-element').addClass('d-none');
                            $('.in-site-cur').addClass('d-none');
                            $('.rate-element').removeClass('d-flex');
                            $('.in-site-cur').removeClass('d-flex');
                        }
                        $('.method_currency').text(resource.currency);
                        $('input[name=currency]').val(resource.currency);
                        $('input[name=amount]').on('input');
                    });
                    $('input[name=amount]').on('input', function() {
                        $('select[name=gateway]').change();
                        $('.amount').text(parseFloat($(this).val()).toFixed(2));
                    });
                })(jQuery);
            </script>
        @endpush

      