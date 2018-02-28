<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package Sydney
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php if ( ! function_exists( 'has_site_icon' ) || ! has_site_icon() ) : ?>
	<?php if ( get_theme_mod('site_favicon') ) : ?>
		<link rel="shortcut icon" href="<?php echo esc_url(get_theme_mod('site_favicon')); ?>" />
	<?php endif; ?>
<?php endif; ?>

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<?php do_action('sydney_before_site'); //Hooked: sydney_preloader() ?>

<div id="page" class="hfeed site">
	<a class="skip-link screen-reader-text" href="#content"><?php _e( 'Skip to content', 'sydney' ); ?></a>

	<?php do_action('sydney_before_header'); //Hooked: sydney_header_clone() ?>

	<header id="masthead" class="site-header" role="banner">
		<div class="header-wrap">
            <div class="container">
                <div class="row">
				<div class="col-md-4 col-sm-8 col-xs-12">
		        <?php if ( get_theme_mod('site_logo') ) : ?>
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php bloginfo('name'); ?>"><img class="site-logo" src="<?php echo esc_url(get_theme_mod('site_logo')); ?>" alt="<?php bloginfo('name'); ?>" /></a>
		        <?php else : ?>
					<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<h2 class="site-description"><?php bloginfo( 'description' ); ?></h2>	        
		        <?php endif; ?>
				</div>
				<div class="col-md-8 col-sm-4 col-xs-12">
					<div class="btn-menu"></div>
					<nav id="mainnav" class="mainnav" role="navigation">
						<?php 
						// wp_nav_menu( array( 'theme_location' => 'primary', 'fallback_cb' => 'sydney_menu_fallback' ) ); 
						?>
						<?php global $current_user;
						      get_currentuserinfo();

						      // echo 'Username: ' . $current_user->user_login . "\n";
						      // echo 'User email: ' . $current_user->user_email . "\n";
						      // echo 'User level: ' . $current_user->user_level . "\n";
						      // echo 'User first name: ' . $current_user->user_firstname . "\n";
						      // echo 'User last name: ' . $current_user->user_lastname . "\n";
						      // echo 'User display name: ' . $current_user->display_name . "\n";
						      // echo 'User ID: ' . $current_user->ID . "\n";
						?>
						<div class="">
							<ul id="" class="menu">
								<li id="menu-item-10" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-10">
									<a href="<?php echo home_url(); ?>">Home</a>
								</li>
								<li id="menu-item-10" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-10">
									<a href="<?php echo get_page_link(get_page_by_path( 'blog' )); ?>">blog</a>
								</li>
								<?php if ($current_user->ID == 0) { ?>
								<li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-13">
									<a href="<?php echo get_page_link(get_page_by_path( 'sign-up' )); ?>">Sign up</a>
								</li>
								<li id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-23 current_page_item menu-item-24">
									<a href="<?php echo get_page_link(get_page_by_path( 'sign-in' )); ?>">Sign in</a>
								</li>
								<?php } else {
									echo '<li class="dropdown"><a href="#">'. $current_user->display_name . ' <i class="fa fa-angle-down"></i></a>
		                                    <ul role="menu" class="sub-menu">
		                                        <li><a href="' . get_page_link(get_page_by_path( 'change-password' )) . '">Change Pass</a></li>
												<li><a href="' . wp_logout_url(home_url()) . '">Logout</a></li>
		                                    </ul>
		                                </li>';
								} ?>
							</ul>
						</div>
					</nav><!-- #site-navigation -->
				</div>
				</div>
			</div>
		</div>
	</header><!-- #masthead -->

	<?php do_action('sydney_after_header'); ?>

	<div class="sydney-hero-area">
		<?php sydney_slider_template(); ?>
		<div class="header-image">
			<?php sydney_header_overlay(); ?>
			<img class="header-inner" src="<?php header_image(); ?>" width="<?php echo esc_attr( get_custom_header()->width ); ?>" alt="<?php bloginfo('name'); ?>" title="<?php bloginfo('name'); ?>">
		</div>
		<?php sydney_header_video(); ?>

		<?php do_action('sydney_inside_hero'); ?>
	</div>

	<?php do_action('sydney_after_hero'); ?>

	<div id="content" class="page-wrap">
		<div class="container content-wrapper">
			<div class="row">	