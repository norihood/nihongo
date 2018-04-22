<?php 
if ( !function_exists( 'add_action' ) ) {
  echo 'Hi there!  I\'m just a plugin, not much I can do when called directly.';
  exit;
}
Class Hk_weather_Setting {
	public function __construct() {
		add_action('admin_menu', function() {
			add_menu_page( 
	        	__( 'HK Weather', 'textdomain' ),
		        'HK Weather',
		        'manage_options',
		        'hk_weather',
		        [$this, 'create_page_weather'],
		        'dashicons-palmtree'
		    );
	    });
	    add_action('admin_init', [$this, 'register_setting_wt']);
	    function wpdocs_theme_name_scripts() {
			wp_enqueue_style( 'hk_weather_font', 'https://fonts.googleapis.com/css?family=Roboto:300,400,700,500&subset=latin,vietnamese,latin-ext', false );
			wp_enqueue_style( 'hk_weather_style', plugin_dir_url( __FILE__ ). '../scripts/css/hk.weather.css', array(), '1.0.0', false );
			wp_enqueue_script( 'hk_weather_script', plugin_dir_url( __FILE__ ). '../scripts/js/hk.weather.js', array(), '1.0.0', true );
		}
		add_action( 'wp_enqueue_scripts', 'wpdocs_theme_name_scripts' );
		function myscript() { ?>
		    <script type="text/javascript">
		      	var HomeUrl = '<?php echo get_site_url(); ?>';
		      	var Load = '<p style="text-align: center;"><img src="<?php echo plugin_dir_url( __FILE__ ). '../images/load.gif'; ?>"></p>'
		    </script>
		    <?php
		}
		add_action( 'wp_footer', 'myscript' );
	}

	public function register_setting_wt() {  
        register_setting('wt_settings-group','weather_setting');
    }

	public function create_page_weather() {
		$wt_options = get_option( 'weather_setting' ); 
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
    	
		?>
		<div class="wrap">
			<h1>Thời tiết Việt Nam</h1>
			<div id="poststuff">
				<form name="post" action="options.php" method="post" id="post" autocomplete="off">
					<?php 
			    		settings_fields( 'wt_settings-group' );
	    				do_settings_sections( 'wt_settings-group' ); 
			    	?>
					<div id="post-body" class="metabox-holder columns-2">
						<div id="postbox-container-2" class="postbox-container">
							<div id="normal-sortables" class="meta-box-sortables ui-sortable">
								<div id="postcustom" class="postbox ">
									<h2 class="hndle ui-sortable-handle"><span>Tùy chỉnh nội dung</span></h2>
									<div class="inside">
										<table width="100%">
											<tr width="100%">
												<td width="50%">
													<div id="postcustomstuff">
														<div class="from-control">
															<label for="tinh">Chọn tỉnh thành mặc định:</label>
															<select name="weather_setting[tinh]" id="tinh" >
																<?php foreach ($tinh_thanh as $key => $value) { ?>
																	<option value="<?php echo $key; ?>" <?php if(isset($wt_options['tinh']) and ($wt_options['tinh'] == $key)){echo 'selected';} ?>><?php echo $value; ?></option>
																<?php } ?>
															</select>
														</div>

														<div class="from-control">
															<p><strong>Các mục hiển thị</strong></p>
															<input type="checkbox" name="weather_setting[muc][moc]"    	  id="moc"     <?php if(isset($wt_options['muc']['moc']))       { echo 'checked'; } else {echo 'checked';} ?>> <label for="moc">Mặt trời mọc</label><br>
															<input type="checkbox" name="weather_setting[muc][lan]"    	  id="lan"     <?php if(isset($wt_options['muc']['lan']))       { echo 'checked'; } else {echo 'checked';} ?>> <label for="lan">Mặt trời lặng</label><br>
															<input type="checkbox" name="weather_setting[muc][tam-nhin]"  id="tam" 	   <?php if(isset($wt_options['muc']['tam-nhin']))  { echo 'checked'; } else {echo 'checked';} ?>> <label for="tam">Tầm nhìn</label><br>
															<input type="checkbox" name="weather_setting[muc][do-am]"     id="am"      <?php if(isset($wt_options['muc']['do-am']))     { echo 'checked'; } else {echo 'checked';} ?>> <label for="am">Độ ẩm</label><br>
														</div>

														<div class="hk-w-mau-nen">
															<p><strong>Chọn màu nền</strong></p>
															<input type="color" name="weather_setting[color_bg]" value="<?php if($wt_options['color_bg']){ echo $wt_options['color_bg'];} else {echo '#ff4444';} ?>">
														</div>
														<div class="hk-w-mau-nen">
															<p><strong>Chọn màu viền</strong></p>
															<input type="color" name="weather_setting[color_vien]" value="<?php if($wt_options['color_vien']){ echo $wt_options['color_vien'];} else {echo '#ff4444';} ?>">
														</div>
														<div class="hk-w-mau-nen">
															<p><strong>Chọn màu thông tin thêm</strong></p>
															<input type="color" name="weather_setting[color_them]" value="<?php if($wt_options['color_them']){ echo $wt_options['color_them'];} else {echo '#ff6f6f';} ?>">
														</div>
														<div class="clear"></div>
													</div>
												</td>
												<?php 
													$thoitiet = new Hk_weather_Api(); 
												?>

												<td width="50%">
													<p><strong>Demo</strong></p>
													<link rel="stylesheet" href="<?php echo plugin_dir_url(__FILE__).'../scripts/css/hk.weather.css'; ?>">
													<div class="hk-weather" style="background: <?php if(isset($wt_options['color_bg']))  echo $wt_options['color_bg']; ?>; border: 1px solid <?php if(isset($wt_options['color_vien']))  echo $wt_options['color_vien']; ?>">
														<div class="main-hk-weather">
															<?php 
																$hinh = 'hinh-anh';
																$time = 'thoi-gian';
																$canh = 'canh-quan';
																$do   = 'nhiet-do';
																$chon = 'tinh';
																if($wt_options['tinh'] > 0) { $tinh = $wt_options['tinh']; } else { $tinh = 20070085; } 
															?>
															<h1><strong><?php echo $thoitiet->get_hk_weather($tinh)->$chon; ?></strong></h1>
<!--															<p><em><?php echo $thoitiet->get_hk_weather($tinh)->$time; ?></em></p>-->
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
															<div class="info-weather-hk" style="background: <?php if(isset($wt_options['color_them']))  echo $wt_options['color_them']; ?>">
																<?php $thong_tin = array(
															    		'moc' 		=> 'Mặt trời mọc',
															    		'lan' 		=> 'Mặt trời lặn',
															    		'do-am' 	=> 'Độ ẩm',
															    		'tam-nhin'  => 'Tầm nhìn',
															    	); ?>
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
															
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div id="postbox-container-1" class="postbox-container">
							<div id="side-sortables" class="meta-box-sortables ui-sortable" style="">
								<div id="wpcf-group-thong-tin-bai-viet" class="postbox ">
									<h2 class="hndle ui-sortable-handle"><span>Lưu thông tin</span></h2>
									<div class="inside">
										<input type="submit" class="button button-primary button-large" id="publish" value="Cập nhật">
									</div>
								</div>
								<div id="postcustom" class="postbox ">
									<h2 class="hndle ui-sortable-handle"><span>Hướng dẫn sử dụng</span></h2>
									<div class="inside">
										<p>Sử dụng shortcode, chèn đoạn mã sau vào khung soạn thảo bài viết, page hoặc post</p>
									    <code>
									    	[hk_weather]
									    </code>
									    
									    <p><i>Ngoài ra có thể chèn bất cứ vị trí nào với đoạn code </i></p>
									    <code>
									    	&lt;?php echo do_shortcode('[hk_weather]'); ?&gt; 
									    </code>
									    <p><strong>Sử dụng widget</strong></p>
									    <p>Plugin cũng có cung cấp 1 widget để thực hiện việc hiển thị thời tiết, các bạn vui lòng vào <strong>Giao diện -> Widget </strong> để sử dụng!</p>
										<br>
									</div>
								</div>
								<div id="postcustom" class="postbox ">
									<h2 class="hndle ui-sortable-handle"><span>Ghi chú</span></h2>
									<div class="inside">
										<p>Plugin này được viết trong thời gian ngắn, chức năng còn khá đơn giản, vì vậy trong quá trình sử dụng bạn nào có gặp sự cố hoặc có ý kiến đóng góp vui lòng thảo luận bên dưới để plugin được hoàn chỉnh, Xin chân thành cảm ơn!!</p>
									    <p>Plugin được share chính thức tài website: <a href="http://huykira.net">http://huykira.net</a> !!!</p>
										<br>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					<br class="clear">
				</form>
			</div>
		</div>
	<?php } 
}