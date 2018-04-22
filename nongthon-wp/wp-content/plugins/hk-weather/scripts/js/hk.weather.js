$(document).ready(function() {
//	$('.hk-weather-tinh p').click(function() {
//		$('.hk-weather-tinh ul').slideToggle(400);
//	});
	$('.hk-weather-tinh select').on('change', function() {
//		$('.hk-weather-tinh ul').slideToggle(400);
		var tinh = $(this).val();
		if(tinh != '') {
			$.ajax({
	            type: 'POST',
	            url: HomeUrl+'/wp-admin/admin-ajax.php',
	            data: {
	                'action' : 'Weather_action', tinh : tinh 
	            },
	            beforeSend: function () {
	                $('.main-hk-weather').html(Load);
	            },
	            success: function (data) {
	                $('.main-hk-weather').html(data);
	            },
	            error: function (err) {
	                console.log(JSON.stringify(err));
	            }
	        });
		}
	});
});