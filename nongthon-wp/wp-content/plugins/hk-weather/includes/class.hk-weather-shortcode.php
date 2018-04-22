<?php
	session_start();
	if ( !function_exists( 'add_action' ) ) {
	  echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
	  exit;
	}
	add_action('wp_ajax_Weather_action', 'Weather_action');
	add_action('wp_ajax_nopriv_Weather_action', 'Weather_action');
	function Weather_action() {
		session_start();
		$thoitiet = new Hk_weather_Api();
		$wt_options = get_option( 'weather_setting' );
		$thong_tin = array(
    		'moc' 		=> 'Mặt trời mọc',
    		'lan' 		=> 'Mặt trời lặn',
    		'do-am' 	=> 'Độ ẩm',
    		'tam-nhin'  => 'Tầm nhìn',
    	);
	    $tinh = isset($_POST['tinh']) ? (int)$_POST['tinh'] : false;  
	   	$_SESSION["tinh"] = isset($_POST['tinh']) ? (int)$_POST['tinh'] : false;  
			$hinh = 'hinh-anh';
			$time = 'thoi-gian';
			$canh = 'canh-quan';
			$do   = 'nhiet-do'; 
		?>
		<h1><strong><?php echo $thoitiet->get_hk_weather($tinh)->tinh; ?></strong></h1>
<!--		<p><em><?php echo $thoitiet->get_hk_weather($tinh)->$time; ?></em></p>-->
		<div class="hk-wt-img">
			<div class="over">
				<img src="<?php echo $thoitiet->get_hk_weather($tinh)->$hinh; ?>">
			</div>
			<div class="over">
				<p class="hk-wt-do"><?php echo $thoitiet->get_hk_weather($tinh)->$do; ?></p>
				<p><?php echo $thoitiet->get_hk_weather($tinh)->$canh; ?></p>	
			</div>
			<div class="clear"></div>
		</div>
		<div class="info-weather-hk" style="background: <?php echo $wt_options['color_them']; ?>">
			<?php if(count($wt_options['muc']) > 0) { ?>
			<?php foreach ($wt_options['muc'] as $key => $value) { ?>
				<ul>
					<li><p><?php echo $thong_tin[$key]; ?></p></li>
					<li><img src="<?php echo plugin_dir_url(__FILE__);?>../images/info/<?php echo $key; ?>.png"></li>
					<li style="text-align: right;"><p><?php echo $thoitiet->get_hk_weather($tinh)->$key; ?></p></li>
					<div class="clear"></div>
				</ul>
			<?php } } else { ?>	
				<?php foreach ($thong_tin as $key => $value) { ?>
					<ul>
						<li><p><?php echo $thong_tin[$key]; ?></p></li>
						<li><img src="<?php echo plugin_dir_url(__FILE__);?>../images/info/<?php echo $key; ?>.png"></li>
						<li style="text-align: right;"><p><?php echo $thoitiet->get_hk_weather($tinh)->$key; ?></p></li>
						<div class="clear"></div>
					</ul>	
				<?php } ?>																
			<?php } ?>
		</div>
	<?php die(); }
	function create_shortcode($args) { ?>
	<?php
		$tinh_thanh = array(
			'20070085'=>'Đà Nẵng',
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
    	$wt_options = get_option( 'weather_setting' );
    	if(isset($_SESSION["tinh"])){
    		$tinh = $_SESSION["tinh"];
    	}else if(isset($args['tinh'])) {
			$tinh = $args['tinh'];
		} else if($wt_options['tinh'] > 0 ){
			$tinh = $wt_options['tinh'];
		} else {
			$tinh = 20070085;
		}
		$thong_tin = array(
    		'moc' 		=> 'Mặt trời mọc',
    		'lan' 		=> 'Mặt trời lặn',
    		'do-am' 	=> 'Độ ẩm',
    		'tam-nhin'  => 'Tầm nhìn',
    	);
		$thoitiet = new Hk_weather_Api(); ?>
		<div class="hk-weather" style="background: <?php echo $wt_options['color_bg']; ?>; border: 1px solid <?php echo $wt_options['color_vien']; ?>">
			<div class="hk-weather-tinh">
				<!--<p>Khu vực khác</p>-->
				<!--<ul>-->
                <select>
                    <option>Khu vực khác</option>
					<?php foreach ($tinh_thanh as $key => $value) { ?>
<!--						<li data-id="<?php echo $key ?>"><?php echo $value; ?></li>-->
                        <option value="<?php echo $key ?>"><?php echo $value; ?></option>
					<?php } ?>
				</select>
                <!--</ul>-->
			</div>
			<div class="main-hk-weather">
				<?php 
					$hinh = 'hinh-anh';
					$time = 'thoi-gian';
					$canh = 'canh-quan';
					$do   = 'nhiet-do'; 
				?>
				<h1><strong><?php echo $thoitiet->get_hk_weather($tinh)->tinh; ?></strong></h1>
<!--				<p><em><?php echo $thoitiet->get_hk_weather($tinh)->$time; ?></em></p>-->
				<div class="hk-wt-img">
					<div class="over">
						<img src="<?php echo $thoitiet->get_hk_weather($tinh)->$hinh; ?>">
					</div>
					<div class="over">
						<p class="hk-wt-do"><?php echo $thoitiet->get_hk_weather($tinh)->$do; ?></p>
						<p><?php echo $thoitiet->get_hk_weather($tinh)->$canh; ?></p>	
					</div>
					<div class="clear"></div>
				</div>
				<div class="info-weather-hk" style="background: <?php echo $wt_options['color_them']; ?>">
					<?php if($wt_options['muc']) { ?>
					<?php foreach ($wt_options['muc'] as $key => $value) { ?>
						<ul>
							<li><p><?php echo $thong_tin[$key]; ?></p></li>
							<li><img src="<?php echo plugin_dir_url(__FILE__);?>../images/info/<?php echo $key; ?>.png"></li>
							<li style="text-align: right;"><p><?php echo $thoitiet->get_hk_weather($tinh)->$key; ?></p></li>
							<div class="clear"></div>
						</ul>
					<?php } } else { ?>	
						<?php foreach ($thong_tin as $key => $value) { ?>
							<ul>
								<li><p><?php echo $thong_tin[$key]; ?></p></li>
								<li><img src="<?php echo plugin_dir_url(__FILE__);?>../images/info/<?php echo $key; ?>.png"></li>
								<li style="text-align: right;"><p><?php echo $thoitiet->get_hk_weather($tinh)->$key; ?></p></li>
								<div class="clear"></div>
							</ul>	
						<?php } ?>																
					<?php } ?>
				</div>
			</div>
		</div>
<?php }
	add_shortcode( 'hk_weather', 'create_shortcode' );
?>