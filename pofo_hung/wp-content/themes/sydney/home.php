<?php
/**
 * The home template file.
 *
 * @package Sydney
 */

get_header(); 

$layout = sydney_blog_layout();

?>

	<?php do_action('sydney_before_content'); ?>

	<div id="primary" class="content-area col-md-9 <?php echo esc_attr($layout); ?>">

		<?php sydney_yoast_seo_breadcrumbs(); ?>
		
		<main id="main" class="post-wrap" role="main">

		<?php if ( have_posts() ) : ?>

		<div class="posts-layout">
			<?php

			global $post;
			$args = array(
				'posts_per_page' => 2,
				'offset'=> 0
				//, 'category' => 1 
			);

			$myposts = get_posts( $args );
			foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
				<?php
					if ( $layout != 'classic-alt' ) {
						// echo '<pre>';print_r(get_post_format());die();
						get_template_part( 'content', get_post_format() );
					} else {
						get_template_part( 'content', 'classic-alt' );
					}
				?>
			<?php endforeach; 
			wp_reset_postdata();?>

		</div>

		<?php
			the_posts_pagination( array(
				'mid_size'  => 1,
			) );
		?>

		<?php else : ?>

			<?php get_template_part( 'content', 'none' ); ?>

		<?php endif; ?>

		</main><!-- #main -->
	</div><!-- #primary -->

	<?php do_action('sydney_after_content'); ?>

<?php 
	if ( ( $layout == 'classic-alt' ) || ( $layout == 'classic' ) ) :
	get_sidebar();
	endif;
?>
<?php get_footer(); ?>
