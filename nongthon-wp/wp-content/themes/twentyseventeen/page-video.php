<?php
/*
 Template Name: video
 */
 ?> 
<?php
get_header(); ?>
<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', VIDEO_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');?>
    <div id="sw_cont">
        <div class="video_list_block">
            <div class="video_top_img">
                <img width="56" height="70" src="<?=get_template_directory_uri() ?>/assets/images/youtube.gif" alt="Video Clips"> Video Clips
            </div>
            <br>
            <?php 
            $cats = get_terms( LOAI_VIDEO, array( 'parent' => 0, 'hide_empty' => false ) );
            if ($cats) {
                foreach ($cats as $cat) {
                    $html_list_video = '';
                    $total_view = 0;
                    // get post array of custom post type
                    $args = array(
                        'posts_per_page' => '-1',
                        'post_type' => VIDEO_POST_TYPE,
                        'tax_query' => array(
                            array(
                                'taxonomy' => LOAI_VIDEO,
                                'field' => 'term_id',
                                'terms' => $cat->term_id
                            )
                        )
                    );
                    $query = new WP_Query( $args );
                    if ( $query->have_posts() ) {
                        set_query_var( 'posts_array', $query->posts );
                        $post_videos = $query->posts;
                        foreach ($post_videos as $key => $video) {
                            $count_view = getPostViews($video->ID);
                            $total_view += absint($count_view);
                            $html_list_video .= '<div class="video_item">
                                <div class="item_child">
                                    <a href="' . get_permalink($video->ID) . '" title="' . $video->post_title . '">
                                        <img src="' . (new Video_Thumbnails())->get_video_thumbnail($video->ID) . '" alt="" width="">
                                    </a>
                                    <div class="title_video">
                                        <a href="' . get_permalink($video->ID) . '" title="' . $video->post_title . '">' . $video->post_title . '</a>
                                    </div>
                                    <p class="views_video">Đã xem: ' . $count_view . '</p>
                                </div>
                            </div>';
                        }
                    } else {
                        $html_list_video .= '<p>Chưa có video nào.</p>';
                    }
                    echo '<div>
                        <div class="video_main">
                            <img width="6" height="6" src="' . get_template_directory_uri() . '/assets/images/navi.gif" alt="">
                            <a href="' . get_term_link( $cat ) . '" title="">' . $cat->name . '</a>
                            <span style="float:right;">' . count($query->posts) . ' Video | ' . $total_view . ' lượt xem</span>
                        </div>
                    </div>';
                    echo $html_list_video;
                    echo '<div class="clear"></div>';
                }
            }
            ?>
        </div>
    </div>
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();