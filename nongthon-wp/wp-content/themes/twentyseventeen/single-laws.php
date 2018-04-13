<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
get_header();
?>
<div class="span-13 contentcolumn"> Văn bản here
    
</div>
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<!-- popup send mail -->
<?php get_template_part('template-parts/post/content', 'sendmail'); ?>
<?php
get_footer();
?>