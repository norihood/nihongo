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
		
		<main id="main" class="post-wrap 123" role="main">

		<?php if ( have_posts() ) : ?>

		<div class="posts-layout">
			<?php

            global $post;
            $args = array(
                'posts_per_page' => 4,
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


<script type="text/javascript">(function(){if(!window.mc4wp){window.mc4wp={listeners:[],forms:{on:function(event,callback){window.mc4wp.listeners.push({event:event,callback:callback});}}}}})();</script>
			<form id="mc4wp-form-1" action="http://dev5.local/?na=s" class="newsletter mc4wp-form mc4wp-form-2603 mc4wp-form-submitted mc4wp-form-success" method="post" data-id="2603" data-name="Footer Newsletter">
			    <div class="mc4wp-form-fields">
			        <div class="input-group">
			            <input name="ne" data-email="required" placeholder="Enter your email..." class="extra-big-input border-none" type="email" required="">
			            <div class="input-group-btn"> <button type="submit" class="btn btn-large bg-white text-deep-pink"><i class="fa ti-email icon-small tz-icon-color no-margin text-fast-blue"></i><span>Subscribe</span></button></div>
			        </div>
			        <label style="display: none !important;">Leave this field empty if you're human: <input type="text" name="_mc4wp_honeypot" value="" tabindex="-1" autocomplete="off"></label><input type="hidden" name="_mc4wp_timestamp" value="1519902522"><input type="hidden" name="_mc4wp_form_id" value="2603"><input type="hidden" name="_mc4wp_form_element_id" value="mc4wp-form-1">
			    </div>
			    <div class="mc4wp-response">
			        <div class="mc4wp-alert mc4wp-success">
			            <p>Thank you, your sign-up request was successful! Please check your email inbox to confirm.</p>
			        </div>
			    </div>
			</form>
