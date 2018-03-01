<?php
/**
 * The template for displaying all single posts.
 *
 * @package Sydney
 */

get_header(); ?>

	<?php if (get_theme_mod('fullwidth_single')) { //Check if the post needs to be full width
		$fullwidth = 'fullwidth';
	} else {
		$fullwidth = '';
	} ?>

	<?php do_action('sydney_before_content'); ?>

	<div id="primary" class="content-area col-md-9 <?php echo $fullwidth; ?>">

		<?php sydney_yoast_seo_breadcrumbs(); ?>

		<main id="main" class="post-wrap" role="main">

		<?php while ( have_posts() ) : the_post(); ?>

			<?php get_template_part( 'content', 'single' ); ?>

			<?php // sydney_post_navigation(); ?>

			<?php
				// If comments are open or we have at least one comment, load up the comment template
				if ( comments_open() || get_comments_number() ) :
					// comments_template();
				endif;
			?>

		<?php endwhile; // end of the loop. ?>

		</main><!-- #main -->
	</div><!-- #primary -->
	<?php echo get_avatar( get_the_author_meta( 'ID' ), 32 ); ?>
	NAME: <?php echo get_the_author(get_the_author_meta( 'ID' )); ?>
	info: <?php echo get_the_author_meta( 'user_description' ); ?>

	<p>Other posts by <?php the_author_posts_link(); ?></p>
	
	<?php do_action('sydney_after_content'); ?>

	<?php
		//for use in the loop, list 5 post titles related to first tag on current post
		$tags = wp_get_post_tags($post->ID);
		if ($tags) {
			$tag_list = array();
			foreach ($tags as $value) {
				$tag_list[] = $value->term_id;
			}
			echo 'Related Posts';
			$first_tag = $tags[0]->term_id;
			// var_dump($tags);
			// var_dump($first_tag);
			$args=array(
			'tag__in' => $tag_list,
			'post__not_in' => array($post->ID),
			'posts_per_page'=>4,
			'caller_get_posts'=>1
			);
			$my_query = new WP_Query($args);
			if( $my_query->have_posts() ) {
				while ($my_query->have_posts()) : $my_query->the_post(); ?>
					<br>
					<a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a>
					 
				<?php
				endwhile;
			}
			wp_reset_query();
		}
	?>
<?php if ( get_theme_mod('fullwidth_single', 0) != 1 ) {
	get_sidebar();
} ?>
<?php get_footer(); ?>
