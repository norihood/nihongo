<?php
/*
 *
 */
?>
<?php get_header(); ?>

<?php
// echo get_permalink(145);
// $terms = get_terms( ['co-quan-ban-hanh', 'linh-vuc'], array(
//     'hide_empty' => false,
// ));
// foreach ($terms as $value) {
//     echo '<a href="' . get_term_link($value->term_id) . '">' . $value->name . '</a>';
    
// }
// echo '<pre>';
// print_r($terms);
// die();

?>
<div class="span-13 contentcolumn">
    <div id="topnews" style="">
    	<?php
    	// get post top_new
    	$args = array(
	       'posts_per_page' => 6, // we need only the latest post, so get that post only
	       'cat' => CATEGORY_NEWS_ID // Use the category id, can also replace with category_name which uses category slug
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
	            				$src = wp_get_attachment_url( get_post_thumbnail_id($top_post->ID), 'thumbnail' );
				    			if (!$src) {
				    				$src = get_template_directory_uri() . '/assets/images/no-image.jpg';
				    			}
	            				$top_slider .= '<div class="item">
									<div class="item_content">
										<a title="' . $top_post->post_title . '" href="' . get_permalink($top_post->ID) . '">
											<img id="slImg0" src="' . $src . '" alt="' . (get_post_meta( get_post_thumbnail_id($top_post->ID), '_wp_attachment_image_alt', true) ?: $top_post->post_title) . '">
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
            <div id="tabs" class="fr tabs p_list_topnews" style="width:180px;">
                <ul class="p_list_topnews-nav">
                    <li class="p_list_topnews-selected">
                        <a href="javascript:void(0);"><span><span>Tin mới nhất</span></span></a>
                    </li>
                </ul>
                <div class="clear">
                </div>
                <div id="tabs-1" class="p_list_topnews-panel ui-widget-content ui-corner-bottom">
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
	$parents = get_categories(array('child_of' => CATEGORY_NEWS_ID, 'parent' => CATEGORY_NEWS_ID, 'hide_empty' => 0));
	if (!empty($parents)) {
		foreach ($parents as $key => $parent) {
			$visible_home = get_field('visible_home', 'category_' . $parent->term_id);
			if ($visible_home == true) { ?>
				<div class="news_column">
			        <div class="news-content bordersilver white clearfix">
			            <div class="header-news">
			                <a class="current" href="<?=get_category_link($parent->term_id)?>" title="<?=$parent->name?>">
			                	<span><span><?=$parent->name?></span></span>
		                	</a>
			                <?php
			                $childs = get_categories(array('child_of' => $parent->term_id, 'hide_empty' => 0));
                            if (!empty($childs)) {
                            	foreach ($childs as $child) {
                            		echo '<a href="' . get_category_link($child->term_id) . '" title="' . $child->name . '">' . $child->name . '</a>';	
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
					    			$src = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' );
					    			if (!$src) {
					    				$src = get_template_directory_uri() . '/assets/images/no-image.jpg';
					    			}
						    		echo '<div class="items border_b clearfix">
						                <a href="' . get_permalink($post->ID) . '" title="' . $post->post_title . '">
						                	<img src="' . $src . '" alt="' . (get_post_meta( get_post_thumbnail_id($post->ID), '_wp_attachment_image_alt', true) ?: $post->post_title) . '" width="120">
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
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>