<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    category van ban here222
</div>
<!-- right sidebar -->
<?php 
set_query_var( 'page_laws', true );
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>