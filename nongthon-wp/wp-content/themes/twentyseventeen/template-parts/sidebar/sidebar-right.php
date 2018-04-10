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
            	<?php
        		// get van ban moi
		    	$args = array(
			       'posts_per_page' => 5,
			       'post_status' => 'publish',
			       'post_type' => 'van-ban'
			    );
			    $van_ban_moi = get_posts($args);
			    if (!empty($van_ban_moi)) {
			    	foreach ($van_ban_moi as $key => $vb_moi) {
			    		echo '<a href="' . get_permalink($vb_moi->ID) . '">&nbsp;&nbsp;<img src="' . get_template_directory_uri() . '/assets/images/file.png">
                <strong style="color:red">&nbsp;' . $vb_moi->post_title . '</strong>  <img src="' . get_template_directory_uri() . '/assets/images/new.gif" height="14"><br>
                &nbsp;&nbsp;Tên:<span style="align:center; color:blue; font-size:11px">&nbsp;(' . text_limit($vb_moi->post_content, 50) . ')</span></a><br>
                <span style="color:#666; font-size:11px">&nbsp;&nbsp;Ngày BH:&nbsp;(' . date('d/m/Y', strtotime($vb_moi->post_date)) . ')</span> <br>';
			    	}
			    }
            	?>
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