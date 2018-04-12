<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <?php get_template_part('template-parts/post/laws', 'breadcrumb'); ?>
    category van ban here
</div>
<!-- right sidebar -->
<?php
set_query_var( 'page_laws', true );
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>