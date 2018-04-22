<?php
/*
 Template Name: music
 */
 ?> 
<?php
get_header(); ?>
<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', MUSIC_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');?>
    <div class="alboxw">
        <div class="alwrap">
            <div id="music-main-tabs" class="alheader"> 
                <span class="boldcolor">Album HOT nhất</span>
<!--                &nbsp;|&nbsp;
                <a id="music-main-tabs-2" onclick="nv_tool_music_main_tabalbum(2);" href="javascript:void(0);">Album mới nhất</a>-->
            </div>
        <?php 
        $cats = get_terms( ALBUM_MUSIC, array( 'parent' => 0, 'hide_empty' => false ) );
        if ($cats) {
            foreach ($cats as $cat) {
                $title_cat = $cat->name;
                $singer_cat = get_field('singer_album', ALBUM_MUSIC . '_' . $cat->term_id);
                $singer_cat = ($singer_cat != '') ? $singer_cat : 'Tổng hợp';
                $img = get_field('album_image', ALBUM_MUSIC . '_' . $cat->term_id);
                $img_album = $img['url'];
                echo '<div id="music-main-load">
                    <div class="maintopal">
                        <a href="' . get_term_link($cat->term_id) . '" title="' . $title_cat . ' - ' . $singer_cat . '">
                            <img class="main-imgtop musicsmalllalbum" src="' . $img_album . '" width="100" height="100" alt="' . $title_cat . '">
                        </a>
                        <h2 class="large"><a href="' . get_term_link($cat->term_id) . '" title="' . $title_cat . '">' . $title_cat . '</a></h2>
                        <p>Trình bày: ' . $singer_cat . '</p>
                        <ul class="mmainsong">';
                // get post array of custom post type
                $args = array(
                    'posts_per_page' => '-1',
                    'post_type' => MUSIC_POST_TYPE,
                    'tax_query' => array(
                        array(
                            'taxonomy' => ALBUM_MUSIC,
                            'field' => 'term_id',
                            'terms' => $cat->term_id
                        )
                    )
                );
                $query = new WP_Query( $args );
                if ( $query->have_posts() ) {
                    $post_music = $query->posts;
                    foreach ($post_music as $key => $music) {
                        echo '<li>
                                <div class="alcontent">'
                                    . ($key+1) . '. <a class="song" href="' . get_permalink($music->ID) . '" title="' . $music->post_title . '">' . text_limit($music->post_title, 5) . '</a>
                                </div>
                            </li>';
                    }
                } else {
                    $html_list_video .= '<p>Chưa có bài hát nào.</p>';
                }
                echo '</ul>
                    <div class="clear"></div>
                </div>';
            }
        }
        ?>
                <div class="clear"></div>
                <p class="alright alcontent">
                    <a class="musicicon mforward" title="Nghe tất cả" href="<?=get_term_link($cat->term_id)?>">&nbsp;Nghe tất cả</a>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();