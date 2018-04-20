<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', VIDEO_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');
//    $term = get_term_by( 'slug', get_query_var('term'), get_query_var('taxonomy') );
//    $tax = get_query_var( 'taxonomy' );
    ?>
    video taxonomy
</div>
<!-- right sidebar -->
<?php 
if (in_array(VAN_BAN_POST_TYPE, $post_type_arr)) {
    set_query_var( 'page_laws', true );
}
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>