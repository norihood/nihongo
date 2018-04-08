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
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/jquery.ui.core.min.js.download"></script>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/jquery.ui.tabs.min.js.download"></script>
<script type="text/javascript">
    //<![CDATA[
    // $(document).ready(function(){var b=["http://i.baohatinh.vn/news/1814/77d5124827t5546l3.jpg","http://i.baohatinh.vn/news/1814/102d5083841t5847l7.jpg","http://kinhtenongthon.vn/media/news/d00cceb10ae0b472a7027f5acc679538/dsc_0713.jpg","http://file.congluan.vn/data/images/0/2018/04/04/khachien/1.jpg?w=500","http://i.baohatinh.vn/news/1814/102d4054956t2446l0.jpg","http://www.tapchicongsan.org.vn/Uploads/huunguyen/Thach-Thang-3-4.jpg"];$.imgpreload(b,function(){for(var c=b.length,a=0;a<c;a++)$("#slImg"+a).attr("src",b[a]);featuredcontentslider.init({id:"slider1",contentsource:["inline",""],toc:"#increment",nextprev:["&nbsp;","&nbsp;"],revealtype:"click",enablefade:[true,0.2],autorotate:[true,3E3],onChange:function(){}});$("#tabs").tabs({ajaxOptions:{error:function(e,f,g,d){$(d.hash).html("Couldnt load this tab.")}}});$("#topnews").show()})});
    $(document).ready(function() {
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
</body>
</html>
