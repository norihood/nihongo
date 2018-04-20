<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
get_header();
?>
<div class="span-13 contentcolumn">
    <?php
    /* Start the Loop */
    while (have_posts()) : the_post();
        $arr_breadcrumb = array();
        $cat_level2     = get_the_category();
        if ($cat_level2) {
            $arr_breadcrumb[] = array(
                'name' => $cat_level2[0]->name,
                'url'  => get_category_link($cat_level2[0]->term_id)
            );

            $parent = $cat_level2[0]->parent;
            while ($parent != CATEGORY_NEWS_ID) {
                //load object for parent category
                $parent_obj = get_category($parent, false);
                if ($parent_obj) {
                    $arr_breadcrumb[] = array(
                        'name' => $parent_obj->name,
                        'url'  => get_category_link($parent_obj->term_id)
                    );
                    $parent = $parent_obj->parent;
                }
                else {
                    break;
                }
            }
        }
        $arr_breadcrumb = array_reverse($arr_breadcrumb);
        ?>

        <h3 class="breakcolumn">
            <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
            <span class="breakcolumn">»</span>
            <?php foreach ($arr_breadcrumb as $key => $cat_breadcrumb) {
                if ($key != 0) {
                    echo '<span class="breakcolumn">»</span>';
                }
                echo '<a href="' . $cat_breadcrumb['url'] . '" title="' . mb_strtoupper($cat_breadcrumb['name']) . '">' . mb_strtoupper($cat_breadcrumb['name']) . '</a>';
            } ?>
        </h3>
        <br><img alt="" src="<?= get_template_directory_uri() ?>/assets/images/bannerhcm.jpg" style="width: 540px; height: 71px; ">
        <div class="news_column" style="padding:0 !important;margin:0 !important;">
            <div id="news_detail">
                <h1><?=get_the_title()?></h1>
                <span class="time"><?=get_thu(date('l', get_post_time()))?> - <?=date('d/m/Y H:i', get_post_time())?></span>
                <div class="control">
                    <ul>
                        <li>
                            <a rel="nofollow" class="sendmail" title="Gửi bài viết qua email" href="javascript:void(0);"></a>
                        </li>
                        <li>
                            <a class="print" title="In ra" href="javascript: void(0)" onclick="NewWindow('<?=get_permalink( get_page_by_path( 'print' ) )?>?id=<?=get_the_ID()?>','','840','768','yes');return false"></a>
                        </li>
                        <li>
                            <a class="savefile" title="Lưu bài viết này" href="<?=get_permalink( get_page_by_path( 'savefile' ) )?>?id=<?=get_the_ID()?>"></a>
                        </li>
                    </ul>
                </div>
                <div style="clear: both;"></div>
                <div id="hometext">
                    <?php echo get_post_meta(get_the_ID(), 'description', true); ?>
                </div>
                <div class="bodytext">
                    <?php echo the_content(); ?>
                </div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_0xmt"></div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_n4hj"></div>
                <div>Click để đánh giá bài viết: <?php if(function_exists('the_ratings')) { the_ratings(); } ?></div>
                
            </div>
            <div class="keywords">
                <strong>Từ khóa: </strong>
                <?php $tags_arr = wp_get_post_tags(get_the_ID());
                if ($tags_arr) {
                    foreach ($tags_arr as $tag) {
//                        echo '<a title="' . $tag->name . '" href="' . get_tag_link($tag->term_id) . '">
                        echo '<em>' . $tag->name . '</em>,&nbsp;';
//                            </a>';
                    }
                }
                ?>
            </div>
            <div id="idcomment">
                <ul class="control">
                    <li>
                        <a onclick="nv_show_hidden(&#39;showcomment&#39;,2);" href="javascript:void(0);"><img src="<?=get_template_directory_uri() ?>/assets/images/comment.png" alt="Show comment"><strong>Xem phản hồi</strong></a>
                    </li>
                    <li>
                        -- <a onclick="nv_show_hidden(&#39;formcomment&#39;,2);" href="javascript:void(0);"><img alt="Add comment" src="<?=get_template_directory_uri() ?>/assets/images/comment_add.png"><strong>Gửi phản hồi</strong></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
                <?php comments_template( '', true ); ?>
            </div>
            <script type="text/javascript">
                nv_show_hidden('formcomment',2);
            </script>
            <?php
            function list_post_related($arr_posts) {
            	$str_list = '';
            	if ($arr_posts) {
	            	foreach( $arr_posts as $post ) {
			        $str_list .= '<li>
				        	<a href="' . get_permalink($post->ID) . '" rel="bookmark" title="' . $post->post_title . '">' . $post->post_title . '</a>
				            <span class="date">(' . date('d/m/Y', strtotime($post->post_date)) . ')</span>
			        	</li>';
			        }
	            }
	            return $str_list;
	        }
	        $related_newer = get_posts( array( 
            	'category__in' => wp_get_post_categories(get_the_ID()),
            	'numberposts' => 10,
            	'post__not_in' => array($post->ID),
            	'date_query' => array(
			        'after' => date('Y-m-d H:i:s', get_post_time()) 
			    )
        	));
			if( $related_newer ) {
				echo '<p class="related_post">
	                <strong>Những tin mới hơn</strong>
	            </p>
				<ul class="related">';
				echo list_post_related($related_newer);
				echo '</ul>';
			}
            $related_older = get_posts( array( 
            	'category__in' => wp_get_post_categories(get_the_ID()),
            	'numberposts' => 10,
            	'post__not_in' => array($post->ID),
            	'date_query' => array(
			        'before' => date('Y-m-d H:i:s', get_post_time()) 
			    )
        	));
			if( $related_older ) {
				echo '<p class="related_post">
	                <strong>Những tin cũ hơn</strong>
	            </p>
				<ul class="related">';
				echo list_post_related($related_older);
				echo '</ul>';
			}
            ?>
        </div>
        &nbsp;
        
    <?php
    endwhile; // End of the loop.
    ?>
</div>
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<!-- popup send mail -->
<?php get_template_part('template-parts/post/content', 'sendmail'); ?>
<?php
get_footer();
?>