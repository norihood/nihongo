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
        get_template_part('template-parts/post/content', 'laws');
    }
    ?>
    category van ban here222
</div>
<!-- right sidebar -->
<?php 
if (in_array(VAN_BAN_POST_TYPE, $post_type_arr)) {
    set_query_var( 'page_laws', true );
}
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>