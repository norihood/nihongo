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
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="container" class="site">

	<header id="" class="" role="banner">

		<?php get_template_part( 'template-parts/header/header', 'image' ); ?>

		<?php // if ( has_nav_menu( 'top' ) ) : ?>
<!--			<div class="navigation-top">
				<div class="wrap">
					<?php // get_template_part( 'template-parts/navigation/navigation', 'top' ); ?>
				</div> .wrap 
			</div> .navigation-top -->
		<?php // endif; ?>

	</header><!-- #masthead -->

	<?php

	/*
	 * If a regular post or page, and not the front page, show the featured image.
	 * Using get_queried_object_id() here since the $post global may not be set before a call to the_post().
	 */
	if ( ( is_single() || ( is_page() && ! twentyseventeen_is_frontpage() ) ) && has_post_thumbnail( get_queried_object_id() ) ) :
		echo '<div class="single-featured-image-header">';
		echo get_the_post_thumbnail( get_queried_object_id(), 'twentyseventeen-featured-image' );
		echo '</div><!-- .single-featured-image-header -->';
	endif;
	?>

	<div class="site-content-contain">
		<div id="content" class="site-content">
            <div class="span-5">
                <div class="box silver">
                    <h3 class="header"><strong>•</strong>Menu Hệ thống</h3>
                    <script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/ddsmoothmenu.js.download"></script>
                    <script type="text/javascript">
                        ddsmoothmenu.init({
                                arrowimages: {
                                    down:['downarrowclass', '<?=get_template_directory_uri()?>/assets/images/down.gif', 23],
                                    right:['rightarrowclass', '<?=get_template_directory_uri()?>/assets/images/right.gif']
                                },
                                mainmenuid: "smoothmenu_75", //Menu DIV id
                                zIndex: 200,
                                orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
                                classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
                                contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
                        })
                    </script>
                    <div id="smoothmenu_75" class="ddsmoothmenu-v">
                        <ul>
                            <?php 
                            $parents = get_categories(array('parent' => 0, 'hide_empty' => 0));
                            if (!empty($parents)) {
                                foreach ($parents as $parent) {
                                    echo '<li>
                                        <a title="' . $parent->name . '" href="' . get_category_link( $parent->term_id ) . '" class="">' . $parent->name . '</a>';
                                    $childs = get_categories(array('child_of' => $parent->term_id, 'hide_empty' => 0));
                                    if (!empty($childs)) {
                                        echo '<ul>';
                                        foreach ($childs as $child) {
                                            echo '<li>
                                                    <a title="' . $child->name . '" href="' . get_category_link( $child->term_id ) . '">' . $child->name . '</a>
                                                </li>';
                                        }
                                        echo '</ul>';
                                    }
                                }
                            } ?>
                        </ul>
                    </div>
                </div>
                <?=adrotate_group('1')?>
            </div>
