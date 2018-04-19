<?php
/*
 Template Name: question
 */
 ?> 
<?php
get_header(); ?>
<div class="span-13 contentcolumn">

    <?php
    set_query_var( 'slug_page', 'tim-kiem' );
    get_template_part('template-parts/post/breadcrumb');
    get_template_part('template-parts/search/search', 'form');
    ?>
    
</div>

<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
