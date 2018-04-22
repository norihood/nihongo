<?php 
if ( !function_exists( 'add_action' ) ) {
  echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
  exit;
} 
Class Hk_weather_Api {
	public function get_hk_weather($city=NULL) {
		$tinh_thanh = array(
	    	'2347703'=>'Bến Tre',                   
			'2347704'=>'Cao Bằng',
			'2347707'=>'Hải Phòng',
			'2347708'=>'Lai Châu',
			'2347709'=>'Lâm Đồng',
			'2347710'=>'Long An',
			'2347711'=>'Quảng Nam',
			'2347712'=>'Quảng Ninh',
			'2347713'=>'Sơn La',
			'2347714'=>'Tây Ninh',
			'2347715'=>'Thanh Hóa',
			'2347716'=>'Thái Bình',
			'2347717'=>'Tiền Giang',
			'2347718'=>'Lạng Sơn',
			'2347719'=>'An Giang',
			'2347720'=>'Đắk Lắk',
			'2347721'=>'Đồng Nai',
			'2347722'=>'Đồng Tháp',
			'2347723'=>'Kiên Giang',
			'2347727'=>'Hà Nội',
			'2347728'=>'Hồ Chí Minh',
			'2347729'=>'Bà Rịa - Vũng Tàu',
			'2347730'=>'Bình Định',
			'2347731'=>'Bình Thuận',
			'2347732'=>'Cần Thơ',
			'2347733'=>'Gia Lai',
			'2347734'=>'Hà Giang',
			'2347735'=>'Hà Tây',
			'2347736'=>'Hà Tĩnh',
			'2347737'=>'Hòa Bình',
			'2347738'=>'Khánh Hòa',
			'2347740'=>'Lào Cai',
			'2347741'=>'Hà Nam',
			'2347742'=>'Nghệ An',
			'2347743'=>'Ninh Bình',
			'2347744'=>'Ninh Thuận',
			'2347745'=>'Phú Yên',
			'2347746'=>'Quảng Bình',
			'2347747'=>'Quảng Trị',
			'2347748'=>'Sóc Trăng',
			'2347749'=>'Thừa - Thiên - Huế',
			'2347750'=>'Trà Vinh',
			'2347751'=>'Tuyên Quang',
			'2347752'=>'Vĩnh Long',
			'2347753'=>'Yên Bái',
			'20070076'=>'Kon Tum',
			'20070077'=>'Quảng Ngãi',
			'20070078'=>'Bình Dương',
			'20070079'=>'Hưng Yên',
			'20070080'=>'Hải Dương',
			'20070081'=>'Bạc Liêu',
			'20070082'=>'Cà Mau',
			'20070083'=>'Thái Nguyên',
			'20070084'=>'Bắc Kạn',
			'20070085'=>'Đà Nẵng',
			'20070086'=>'Bình Phước',
			'20070087'=>'Bắc Giang',
			'20070088'=>'Bắc Ninh',
			'20070089'=>'Nam Đinh',
			'20070090'=>'Vĩnh Phúc',
			'20070091'=>'Phú Thọ',
			'28301718'=>'Điện Biên',
			'28301719'=>'Đắk Nông',
			'28301720'=>'Hậu Giang',
    	);
		$status = array(
			'0'=>'Bão táp, cơn lốc xoáy',
			'1'=>'Bão nhiệt đới',
			'2'=>'Trời bão',
			'3'=>'Trời giông bão',
			'4'=>'Trời giông bão',
			'5'=>'Trời mưa và tuyết',
			'6'=>'Trời mưa, có mưa đá',
			'7'=>'Có mưa đá và tuyết',
			'8'=>'Mưa phùn lạnh',
			'9'=>'Mưa phùn',
			'10'=>'Mưa lạnh',
			'11'=>'Mưa rào',
			'12'=>'Mưa rào',
			'13'=>'Gió có tuyết',
			'14'=>'Mưa tuyết nhẹ',
			'15'=>'Tuyết bay',
			'16'=>'Tuyết rơi',
			'17'=>'Mưa đá tuyết',
			'18'=>'Mưa tuyết',
			'19'=>'Dust (bụi)',
			'20'=>'Sương mù',
			'21'=>'Sương mù',
			'22'=>'Sương mù',
			'23'=>'Trời gió',
			'24'=>'Trời gió mạnh',
			'25'=>'Trời rét, Lạnh giá',
			'26'=>'Trời nhiều mây',
			'27'=>'Nhiều mây về đêm',
			'28'=>'Nhiều mây về ngày',
			'29'=>'Nhiều mây về đêm',
			'30'=>'Nhiều mây về ngày',
			'31'=>'Trời quang mây',
			'32'=>'Trời nắng đẹp',
			'33'=>'Trời nắng mây rải rác',
			'34'=>'Trời nắng mây rải rác',
			'35'=>'Trời mưa rải rác',
			'36'=>'Trời nắng nóng',
			'37'=>'Trời giông',
			'38'=>'Sấm chớp rải rác',
			'39'=>'Sấm chớp rải rác',
			'40'=>'Mưa lớn nhiều nơi',
			'41'=>'Tuyết nặng hạt',
			'42'=>'Tuyết rải rác',
			'43'=>'Tuyết nặng',
			'44'=>'Trời mây',
			'45'=>'Mưa sấm sét',
			'46'=>'Mưa tuyết',
			'47'=>'Mưa giông',
			'48'=>'Mưa rải rác',
		);
		if($city==NULL) {
	    	$city = 20070085;
	    }
	    $tinh = $city;
	    $old_data = get_transient($city);
	    if(!$old_data) {
	    	$BASE_URL = "http://query.yahooapis.com/v1/public/yql";
    		$yql_query = 'select location, atmosphere, astronomy, item.condition from weather.forecast where woeid='.$tinh.' and u = "C"';
    		$yql_query_url = $BASE_URL . "?q=" . urlencode($yql_query) . "&format=json";
		    @$hanoi = file_get_contents($yql_query_url);
		    $hanoi = json_decode($hanoi);
		    $thoi_tiet = $hanoi->query->results->channel;
		   	$code = $thoi_tiet->item->condition->code;
		    $hinh_anh = plugin_dir_url(__FILE__).'../images/'.$code.'d.png';
		    $thoitiet = array(
		    	'tinh' 		=> $tinh_thanh[$tinh],
		    	'canh-quan' => $status[$code],
		    	'thoi-gian' => $thoi_tiet->item->condition->date,
		    	'moc' 		=> $thoi_tiet->astronomy->sunrise,
		    	'lan' 		=> $thoi_tiet->astronomy->sunset,
		    	'nhiet-do' 	=> $thoi_tiet->item->condition->temp.'° C',
		    	'tam-nhin' 	=> $thoi_tiet->atmosphere->visibility.' Km',
		    	'do-am' 	=> $thoi_tiet->atmosphere->humidity.'%',
		    	'hinh-anh' 	=> $hinh_anh,
		    );
		    $data = (object)$thoitiet;
		    if($data) {
			    set_transient($city, $data, 1000);
			    return $data;
			}
	    } else {
	    	foreach ($old_data as $key => $value) {
				if (empty($value)) {
					unset($old_data[$key]);
				}
			}
			if ($old_data) {
				return $old_data;
			}
	    }
	}
}