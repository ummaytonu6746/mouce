function TokenSubmit(target) {
	var form = $(target).attr('data-form');
	var data = $("#" + form).serialize();
	var url = $("#" + form).attr('action');
	$(target).attr('disabled',"disabled");
	mui.showLoading("loading...", "div");
	$.post(url, data, function (data) {
		mui.hideLoading();

		if (data.url) {
			mui.alert(data.msg, function () {
				window.location.href = data.url;
			})
		} else {
	
			$(target).attr('disabled',null);
			$("#token").val(data.data['token']);
			mui.alert(data.msg);
		}
		
	}, 'json')
}

function FormSubmit(target) {
	var form = $(target).attr('data-form');
	var data = $("#" + form).serialize();
	var url = $("#" + form).attr('action');
	$(target).attr('disabled',"disabled");
	mui.showLoading("loading...", "div");
	$.post(url, data, function (data) {
		mui.hideLoading();

		if (data.url) {
			mui.alert(data.msg, function () {
				window.location.href = data.url;
			})
		} else {
			
			$(target).attr('disabled',null);
			
			mui.alert(data.msg);
		}
		
	}, 'json')
}

function Form_Submit(target) {
    var form = $(target).attr('data-form');
    var data = $("#" + form).serialize();
    var url = $("#" + form).attr('action');
    mui.showLoading("loading...", "div");
    $.post(url, data, function (data) {
		mui.hideLoading();
		if (data.url) {
			mui.alert(data.msg,function(){
				document.write(data.url); 
			})

		} else {
			mui.alert(data.msg);
		}
        
    }, 'json')
}



function sendMessage(obj) {
			var obj = $(obj);
			var thisevent=obj.attr('data-event');
			var s = 120;
			var phone = $.trim($('input[name="mobile"]').val());
			if (phone.length!=10) {
				 
				 mui.alert("Please enter a valid mobile phone number");
				return false;
			}
			
			obj.attr("disabled", "disabled");
			//obj.removeAttr('onclick');

			callback();

			var T = window.setInterval(callback, 1000);

			function callback() {
				if (s <= 0) {

					window.clearInterval(T);
					obj.attr("disabled", false).val("Send"); 
					//obj.attr('onclick',"sendMessage(this);");
					obj.val('Send');
				} else {
					obj.val( --s + " S");
					return ;
				}
			}
			

			$.ajax({
				url:"/index/sms/send",
				type: 'post',
				dataType: 'json',
				data:{type:$(obj).attr('rel'),type:thisevent,mobile:phone, scene:3},
				success: function (res) {
					if (res.code == 1) {
						mui.alert('success');
					} else {
						mui.alert('fail');
					}
				}
			})
}
