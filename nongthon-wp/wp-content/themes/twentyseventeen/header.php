<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="profile" href="http://gmpg.org/xfn/11">

        <?php wp_head(); ?>
        <script type="text/javascript">
            var base_url = '<?php echo home_url()?>',
                admin_ajax = '<?php echo admin_url('admin-ajax.php')?>';
        </script>
        <script type="text/javascript" src="<?= get_template_directory_uri() ?>/assets/js/vi.js"></script>
        <script type="text/javascript" src="<?= get_template_directory_uri() ?>/assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="<?= get_template_directory_uri() ?>/assets/js/global.js"></script>
        <script type="text/javascript" src="<?= get_template_directory_uri() ?>/assets/js/arrow8.js.download"></script>
    </head>

    <body <?php body_class(); ?>>
        <div id="container" class="site">

            <header id="" class="" role="banner">

                <?php get_template_part('template-parts/header/header', 'image'); ?>

                <?php // if ( has_nav_menu( 'top' ) ) :  ?>
                <!--			<div class="navigation-top">
                                <div class="wrap">
                <?php // get_template_part( 'template-parts/navigation/navigation', 'top' );  ?>
                                </div> .wrap 
                            </div> .navigation-top -->
                <?php // endif;  ?>

            </header><!-- #masthead -->

            <?php
            /*
             * If a regular post or page, and not the front page, show the featured image.
             * Using get_queried_object_id() here since the $post global may not be set before a call to the_post().
             */
            if (( is_single() || ( is_page() && !twentyseventeen_is_frontpage() ) ) && has_post_thumbnail(get_queried_object_id())) :
//                echo '<div class="single-featured-image-header">';
//                echo get_the_post_thumbnail(get_queried_object_id(), 'twentyseventeen-featured-image');
//                echo '</div><!-- .single-featured-image-header -->';
            endif;
            ?>
            <div class="site-content-contain">
                <div id="content" class="site-content">
                    <!-- left sidebar -->
                    <?php get_template_part('template-parts/sidebar/sidebar', 'left'); ?>
