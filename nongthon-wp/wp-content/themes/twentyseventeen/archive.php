<?php
/**
 * The template for displaying archive pages
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div class="span-13 contentcolumn">
    <?php
    add_filter('posts_where','title_filter',10,2);
    $post_type = $_POST['post_type'];
    $query_args = array(
        'post_type' => $_POST['post_type'],
        'title_filter' => $_POST['text_search'],
        'post_status' => 'publish',
//        'paged' => $page,
        'posts_per_page' => '-1',
//        'meta_query' => array(
//            array(
//                'key' => 'bookingref',
//                'value' => 'the_value_you_want',
//                'compare' => 'LIKE'
//            ),
//            array(
//                'key' => 'customerref',
//                'value' => 'the_value_you_want',
//                'compare' => 'LIKE'
//            )
//        )
    );
    $query = new WP_Query( $query_args );
    remove_filter('posts_where','title_filter',10,2);
    echo '<pre>';
    print_r($query->posts);
//    die();
    // post type van-ban
    if (VAN_BAN_POST_TYPE == $post_type) {
        get_template_part('template-parts/post/laws', 'breadcrumb');
        get_template_part('template-parts/post/content', 'laws');
    }
    ?>
    archive, tìm kiếm ở đây
</div>
<!-- right sidebar -->
<?php 
if (VAN_BAN_POST_TYPE == $post_type) {
    set_query_var( 'page_laws', true );
}
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>
