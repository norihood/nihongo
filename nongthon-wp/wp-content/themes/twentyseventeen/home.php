<?php
/*
 *
 */
?>
<?php get_header(); ?>
 
<div class="span-13 contentcolumn">
<link type="text/css" rel="stylesheet" href="<?=get_template_directory_uri()?>/assets/css/jquery.ui.tabs.css" media="all">
    <div id="topnews" style="">
    	<?php
    	// get post top_new
    	$args = array(
	       'posts_per_page' => 6, // we need only the latest post, so get that post only
	       'cat' => '11' // Use the category id, can also replace with category_name which uses category slug
	    );
	    $top_posts = get_posts($args);
    	?>
        <div class="indent clearfix">
            <div class="headline span-8 last fl">
            	<div id="slider1" class="sliderwrapper">
	            	<div class="bxslider">
	            		<?php if(!empty($top_posts)) { 
	            			$top_slider = '';
	            			$pagi_top_slider = '';
	            			$top_title = '';
	            			foreach ($top_posts as $key => $top_post) {
	            				$top_slider .= '<div class="item">
									<div class="item_content">
										<a title="' . $top_post->post_title . '" href="' . get_permalink($top_post->ID) . '">
											<img id="slImg0" src="' . wp_get_attachment_url( get_post_thumbnail_id($top_post->ID), 'thumbnail' ) . '" alt="' . (get_post_meta( get_post_thumbnail_id($top_post->ID), '_wp_attachment_image_alt', true) ?: $top_post->post_title) . '">
											<span>' . $top_post->post_title . '</span>
										</a>
									</div>
								</div>';
								$pagi_top_slider .= '<li>
													<a data-slide-index="' . $key . '" href="" class="toc">' . ($key + 1) . '	</a>
												</li>';
								$top_title .= '<li>
		                            <a title="' . $top_post->post_title . '" href="' . get_permalink($top_post->ID) . '">' . text_limit($top_post->post_title) . '</a>
		                        </li>';
	            			}
	            			echo $top_slider;
	            		}
            			?>
					</div>
				</div>
				<div class="pagination">
					<a href="" class="prev-slider">&nbsp;</a>
					<ul id="paginate-slider1">
						<?=$pagi_top_slider?>
					</ul>
					<a href="" class="next-slider">&nbsp;</a>
				</div>
            </div>
            <div id="tabs" class="fr tabs ui-tabs ui-widget ui-widget-content ui-corner-all" style="width:180px;">
                <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
                    <li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
                        <a href="#"><span><span>Tin mới nhất</span></span></a>
                    </li>
                </ul>
                <div class="clear">
                </div>
                <div id="tabs-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <ul class="lastest-news">
                    	<?=$top_title?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 2px;">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="540" height="88">
            <param name="movie" value="<?=get_template_directory_uri()?>/assets/images/banner-moi.swf">
            <param name="wmode" value="transparent">
            <param name="quality" value="high">
            <param name="menu" value="false">
            <param name="seamlesstabbing" value="false">
            <param name="allowscriptaccess" value="samedomain">
            <param name="loop" value="true">
            <!--[if !IE]> <-->
            <object type="application/x-shockwave-flash" width="540" height="88" data="<?=get_template_directory_uri()?>/assets/images/banner-moi.swf">
                <param name="pluginurl" value="http://www.adobe.com/go/getflashplayer">
                <param name="wmode" value="transparent">
                <param name="loop" value="true">
                <param name="quality" value="high">
                <param name="menu" value="false">
                <param name="seamlesstabbing" value="false">
                <param name="allowscriptaccess" value="samedomain">
            </object>
            <!----> <!--[endif]---->
        </object>
    </div>
	<?php // get list category and post
	$parents = get_categories(array('child_of' => 11, 'parent' => 11, 'hide_empty' => 0));
	if (!empty($parents)) {
		foreach ($parents as $key => $parent) {
			$visible_home = get_field('visible_home', 'category_' . $parent->term_id);
			if ($visible_home == true) { ?>
				<div class="news_column">
			        <div class="news-content bordersilver white clearfix">
			            <div class="header-news">
			                <a class="current" href="http://nongthonmoihatinh.vn/index.php/vi/news/Tin-tuc-nong-thon-moi/" title="<?=$parent->name?>">
			                	<span><span><?=$parent->name?></span></span>
		                	</a>
			                <?php
			                $childs = get_categories(array('child_of' => $parent->term_id, 'hide_empty' => 0));
                            if (!empty($childs)) {
                            	foreach ($childs as $child) {
                            		echo '<a href="http://nongthonmoihatinh.vn/index.php/vi/news/Tieu-diem-136/" title="' . $child->name . '">' . $child->name . '</a>';	
                            	}	
                        	} ?>
			            </div>
			            <?php
		            	$post_args = array(
					       'posts_per_page' => 5,
					       'cat' => $parent->term_id
					    );
					    $post_in_5 = get_posts($post_args);
					    if (!empty($post_in_5)) {
					    	$list_post_related = '<hr>
						            <ul class="reset related">';
					    	foreach ($post_in_5 as $key_post => $post) {
					    		if ($key_post == 0) {
						    		echo '<div class="items border_b clearfix">
						                <a href="' . get_permalink($post->ID) . '" title="' . $post->post_title . '">
						                	<img src="' . wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' ) . '" alt="' . (get_post_meta( get_post_thumbnail_id($post->ID), '_wp_attachment_image_alt', true) ?: $post->post_title) . '" width="120">
					                	</a>
						                <h3>
						                	<a href="' . get_permalink($post->ID) . '" title="' . $post->post_title . '">' . $post->post_title . '</a>
					                	</h3>';
					                $description = get_post_meta( $post->ID, 'description', true );
					                if ($description != '') {
					                	echo '<p>' . $description . '</p>';
					                }

						                
						            echo '<p style="text-align : right;">
						                    <a class="read_more" href="' . get_permalink($post->ID) . '" title="' . $post->post_title . '">Đọc tiếp</a>
						                </p>
						            </div>';
					        	} else {
					        		$list_post_related .= '<li>
						                    <a title="' . $post->post_title . '" href="' . get_permalink($post->ID) . '">' . text_limit($post->post_title, 20) . '</a>
						                </li>';
					        	}
					    	}
					    	$list_post_related .= '<ul>';
					    	if (count($post_in_5) > 1) {
					    		echo $list_post_related;
					    	}
					    }
			            ?>
			        </div>
			    </div>
	<?php		}
			}
			
		}
	?>
    &nbsp;
    <div class="danhngon1"></div>
    <dl class="danhngon2" style="text-align:center">
        <div class="pd"></div>
        Ðừng để tính tự phụ và tự kỷ làm bạn nghĩ rằng người ta sẽ trở thành bạn bè của mình ngay lần đầu gặp gỡ. Tình bạn đích thực phải được chậm rãi vun trồng.<span class="sp2">Lord Chesterfield</span>
        <div class="pd"></div>
    </dl>
</div><!-- .contentcolumn -->
<div class="span-6 last right-sidebar">
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Tiêu điểm</h3>
        <table id="aaa" width="100%" border="0" cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td>
                        <marquee behavior="scroll" align="center" direction="up" height="220" scrollamount="1" scrolldelay="5" onmouseover="this.stop();" onmouseout="this.start();">
                        <?php 
                        $tieu_diem_args = array( 'numberposts' => 5, 'category_name' => 'tieu-diem' );
						$post_tieu_diem = get_posts( $tieu_diem_args );
						if (!empty($post_tieu_diem)) {
							echo '<ul class="tieu-diem">';
							foreach( $post_tieu_diem as $tieu_diem_key => $tieu_diem ) {
								echo '<li>
									<a href="' . get_permalink($tieu_diem->ID) . '"><img src="' . get_template_directory_uri() . '/assets/images/new.gif" width="31" height="16">' . $tieu_diem->post_title . '</a>
								</li>';
							}
							echo '</ul>';
						}
						

						?>
                        </marquee>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Văn bản mới</h3>
        <marquee behavior="scroll" align="center" direction="up" height="200" scrollamount="1" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()">
            <div class="sliver2">
                <a href="http://nongthonmoihatinh.vn/index.php/vi/laws/view-252-Quyet-dinh-so-282-QD-UBND/">&nbsp;&nbsp;<img src="<?=get_template_directory_uri()?>/assets/images/file.png">
                <strong style="color:red">&nbsp;Quyết định số 282/QĐ-UBND</strong>  <img src="<?=get_template_directory_uri()?>/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(Về việc chấp thuận và giao đỡ đầu (bổ sung) thực hiện Chương trình
                MTQG xây dựng nông thôn mới giai đoạn 2017 - 2020)</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(27/03/2018)</span> <br>
                <a href="http://nongthonmoihatinh.vn/index.php/vi/laws/view-251-Quyet-dinh-so-728-QD-UBND/">&nbsp;&nbsp;<img src="<?=get_template_directory_uri()?>/assets/images/file.png">
                <strong style="color:red">&nbsp;Quyết định số 728/QĐ-UBND</strong>  <img src="<?=get_template_directory_uri()?>/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(Về việc phê duyệt danh sách các xã đăng ký thực hiện hoàn thành các tiêu chí đạt chuẩn nông thôn mới trong năm 2018)</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(14/03/2018)</span> <br>
                <a href="http://nongthonmoihatinh.vn/index.php/vi/laws/view-250-Quyet-dinh-so-650-QD-UBND/">&nbsp;&nbsp;<img src="<?=get_template_directory_uri()?>/assets/images/file.png">
                <strong style="color:red">&nbsp;Quyết định số 650 /QĐ-UBND</strong> <img src="<?=get_template_directory_uri()?>/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(Về việc phân bổ nguồn kế hoạch vốn ngân sách Trung ương
                thực hiện Chương trình MTQG xây dựng nông thôn mới năm 2018)</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(07/03/2018)</span> <br>
                <a href="http://nongthonmoihatinh.vn/index.php/vi/laws/view-249-Quyet-dinh-so-15-QD-BTC/">&nbsp;&nbsp;<img src="<?=get_template_directory_uri()?>/assets/images/file.png">
                <strong style="color:red">&nbsp;Quyết định số 15/QĐ-BTC</strong>    <img src="<?=get_template_directory_uri()?>/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(Về việc thành lập Ban Giám khảo cuộc thi "Khu dân cư NTM kiểu mẫu, vườn mẫu Hà Tĩnh năm 2017)</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(02/03/2018)</span> <br>
            </div>
        </marquee>
    </div>
    <a href="/hoi-dap/">
    	<img alt="" src="<?=get_template_directory_uri()?>/assets/images/hd.png" style="width: 240px; height: 115px;">
	</a>
	<br>
    <a href="/music/">
    	<img alt="" src="<?=get_template_directory_uri()?>/assets/images/hatvenongthonmoi.png" style="width: 240px; height: 140px;">
	</a>
	<br>
	<?=adrotate_group('2')?>
	<div class="box silver">
        <h3 class="header"><strong>•</strong>Thư viện Hình ảnh</h3>
        <div id="slider">
            <ul id="album_img">
                <li >
                    <a class="lightbox1" title="" href="<?=get_template_directory_uri()?>/assets/images/nx.jpg"><img src="<?=get_template_directory_uri()?>/assets/images/nx.jpg" alt="" width="240px" height="180px" border="0"></a>
                </li>
                <li>
                    <a class="lightbox1" title="" href="<?=get_template_directory_uri()?>/assets/images/img_9203.jpg"><img src="<?=get_template_directory_uri()?>/assets/images/img_9203.jpg" alt="" width="240px" height="180px" border="0"></a>
                </li>
                <li>
                    <a class="lightbox1" title="" href="<?=get_template_directory_uri()?>/assets/images/img_9765.jpg"><img src="<?=get_template_directory_uri()?>/assets/images/img_9765.jpg" alt="" width="240px" height="180px" border="0"></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Thăm dò ý kiến</h3>
        <?php if ( function_exists( 'vote_poll' ) && ! in_pollarchive() ): ?>
		        <div class="p_polls">
		        	<?php get_poll(1);?>
		        </div>
		        <?php //display_polls_archive_link(); ?>
		<?php endif; ?>
    </div>
    <div class="box silver">
        <h3 class="header"><strong>•</strong>Thời tiết - Tỷ giá</h3>
        <!-- <iframe title="Thời tiết" src="<?=get_template_directory_uri()?>/weather/thoitiet.html" width="240px" height="228px" frameborder="0" scrolling="no"></iframe> -->
    </div>
</div><!-- right sidebar -->
<?php get_footer(); ?>