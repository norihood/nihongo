<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>
			
		</div><!-- #content -->

		
	</div><!-- .site-content-contain -->
</div><!-- #page -->
<footer id="footer" class="clearfix" role="contentinfo">
	<div class="fl">
        <p class="footer">
            <span style="font-size: 12px"><span style="color: FFFF00(0,0,255)"><strong>VĂN PHÒNG ĐIỀU PHỐI CHƯƠNG TRÌNH MTQG XÂY DỰNG NÔNG THÔN MỚI </strong></span></span>
        </p>
        <p class="footer">
            <span style="font-size: 12px"><span style="color: fff(0,0,255)"> Địa chỉ: 148 - Đường Trần Phú - Thành Phố Hà Tĩnh </span></span>
        </p>
        <p class="footer">
            <span style="font-size: 12px"><span style="color: fff(0,0,255)"> Điện thoại: 0393.892.689; Fax: 0393.691.889; Email: vanphongdieuphoiht@gmail.com </span></span>
        </p>
        <p class="footer">
            <span style="font-size: 12px"><span style="color: fff(0,0,255)"> Trưởng ban biên tập: Trần Huy Oánh - Chánh Văn phòng
            <span style="font-size: 12px"><span style="color: fff(0,0,255)"> : Phó trưởng ban biên tâp: Ngô Ðình Long - Phó Chánh Văn phòng</span></span></span></span>
        </p>
        <p class="footer">
        </p>
    </div>
    <div class="clear">
    </div>
</footer><!-- #colophon -->
<script type="text/javascript">
    nv_DigitalClock('divclock');
</script>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/mudim.js.download"></script>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/contentslider.js.download"></script>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/jquery-ui.js"></script>
<script type="text/javascript" src='https://www.google.com/recaptcha/api.js?hl=vn'></script>
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        p_loader(false);
    	var bx_slider = $('.bxslider').bxSlider({
		    mode: 'fade',
		    captions: true,
		    slideWidth: 600,
		    auto: true,
		    autoHover: true,
		    wrapperClass: 'bx-wrapper p_bx_wrapper',
		    controls: false, 
		    pager: true,
		    pagerCustom: '#paginate-slider1',
	  	});
	  	$('a.prev-slider').click(function (e) {
	  		e.preventDefault();
		    var current = bx_slider.getCurrentSlide();
		    bx_slider.goToPrevSlide(current) - 1;
		});
		$('a.next-slider').click(function (e) {
			e.preventDefault();
		    var current = bx_slider.getCurrentSlide();
		    bx_slider.goToNextSlide(current) + 1;
		});
		$('#album_img').bxSlider({
			auto: true,
			autoHover: true,
			controls: false,
			pager: false,
			wrapperClass: 'bx-wrapper p_album_wrapper',
		});
        
    })
    //]]>
</script>
<link rel="stylesheet" type="text/css" href="<?=get_template_directory_uri()?>/assets/css/contentslider.css">
<?php wp_footer(); ?>
<div class="clear"></div>
<div id="modal_loader">
    <div id="loader"></div>
</div>
</body>
</html>
