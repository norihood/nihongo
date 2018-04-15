<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <?php
    $tax = get_query_var( 'taxonomy' );
    $post_type_arr = get_post_types_by_taxonomy($tax);
    // post type van-ban
    if (in_array(VAN_BAN_POST_TYPE, $post_type_arr)) {
        get_template_part('template-parts/post/laws', 'breadcrumb');
        get_template_part('template-parts/search/search', 'laws');
        // get post array of custom post type
        $args = array(
            'posts_per_page' => absint(get_option( 'posts_per_page' )),
            'post_type' => VAN_BAN_POST_TYPE,
            'paged' => (get_query_var('paged')) ? get_query_var('paged') : 1,
            'tax_query' => array(
                array(
                    'taxonomy' => get_query_var('taxonomy'),
                    'field' => 'term_id',
                    'terms' => get_queried_object()->term_id,
                )
            )
        );
        $query = new WP_Query( $args );
        if ( $query->have_posts() ) {
            set_query_var( 'posts_array', $query->posts );
            get_template_part('template-parts/post/content', 'laws');

            wp_pagenavi( array( 'query' => $query ) );
        } else {
            echo '<p>Chưa có văn bản nào.</p>';
        }
    }
    ?>
</div>
<!-- right sidebar -->
<?php 
if (in_array(VAN_BAN_POST_TYPE, $post_type_arr)) {
    set_query_var( 'page_laws', true );
}
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>