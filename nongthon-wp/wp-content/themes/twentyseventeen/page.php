<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
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
    set_query_var( 'slug_page', 'gioi-thieu' );
    set_query_var( 'img_top', '<img alt="" src="' . get_template_directory_uri() . '/assets/images/bannerhcm.jpg" style="width: 540px; height: 71px; ">' );
    get_template_part('template-parts/post/breadcrumb');?>
    <?php
    while ( have_posts() ) : the_post();

        the_content();

    endwhile; // End of the loop.
    ?>
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
