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
		<?php //echo do_shortcode('[contact-form-7 id="74" title="Contact form 1"]'); ?>
		<main id="main" class="post-wrap 123" role="main">
		<?php 
			// the query to set the posts per page to 3
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			// Get current page and append to custom query parameters array
			// if ( get_query_var( 'paged' ) ) {
			//     $paged = get_query_var( 'paged' );
			// } elseif ( get_query_var( 'page' ) ) {
			//     $paged = get_query_var( 'page' );
			// } else {
			//     $paged = 1;
			// }
			// query_posts($args);
			$arg = array(
			    'post_type' => 'post',
			    // 'category_name' => $the_cat_nicename,
			    'posts_per_page' => 3,
			    'paged' => $paged,
			    'orderby'=>'date',
			    'order'=>'DESC');
			$args_s = new WP_Query($arg);
			// query_posts(); 
			var_dump(get_query_var('posts_per_page'));
		?>
		<?php if ( $args_s->have_posts() ) : ?>

        <div class="posts-layout">
            <?php while ( $args_s->have_posts() ) : $args_s->the_post(); ?>

                <?php
                    if ( $layout != 'classic-alt' ) {
                        get_template_part( 'content', get_post_format() );
                    } else {
                        get_template_part( 'content', 'classic-alt' );
                    }
                ?>

            <?php endwhile;
            wp_reset_postdata(); ?>
        </div>

        <?php
   //      	if (function_exists("wp_bootstrap_pagination"))
		 //    {
			//          //wp_bs_pagination($the_query->max_num_pages);
			//          wp_bootstrap_pagination(['custom_query' => $args_s]);
			// }
            if (function_exists('wp_paginate')):
                // echo 'aaaaaaaaaaaaa3';
                wp_paginate( );  
            else :
                echo 'bbbbbbbbbbbb2';
                echo the_posts_pagination( array(
                    'prev_text'          => __( 'Previous page' ),
                    'next_text'          => __( 'Next page' ),
                    'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page' ) . ' </span>',
                ) );
            endif;
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
