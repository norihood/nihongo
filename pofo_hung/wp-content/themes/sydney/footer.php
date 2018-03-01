<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package Sydney
 */
?>
			</div>
		</div>
	</div><!-- #content -->

	<?php do_action('sydney_before_footer'); ?>

	<?php if ( is_active_sidebar( 'footer-1' ) ) : ?>
		<?php get_sidebar('footer'); ?>
	<?php endif; ?>

    <a class="go-top"><i class="fa fa-angle-up"></i></a>
		
	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info container">
			<a href="<?php echo esc_url( __( 'http://wordpress.org/', 'sydney' ) ); ?>"><?php printf( __( 'Proudly powered by %s', 'sydney' ), 'WordPress' ); ?></a>
			<span class="sep"> | </span>
			<?php printf( __( 'Theme: %2$s by %1$s.', 'sydney' ), 'aThemes', '<a href="https://athemes.com/theme/sydney" rel="designer">Sydney</a>' ); ?>

			

			<?php // echo do_shortcode('[newsletter_form button_label="Go!"]
						//[newsletter_field name="email" label=""]
						//[/newsletter_form]'); ?>
			<form id="mc4wp-form-1" action="/?na=s" class="newsletter mc4wp-form mc4wp-form-2603 mc4wp-form-submitted mc4wp-form-success" method="post" data-id="2603" data-name="Footer Newsletter">
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
			<script type="text/javascript">
			// jQuery(document).ready(function($) {
   //  			// Code that uses jQuery's $ can follow here.
			// 	$('#mc4wp-form-1').on('submit', function (e) {
			// 		e.preventDefault();
			// 		var $form = $(this);
			// 		alert();
			// 		$.ajax({
			// 			url: 'http://dev5.local/?na=s',
			// 			type: 'post',
			// 			data: $form.serialize(),
			// 			success: function(data) {
			// 				console.log(data);
			// 			}
			// 		});
			// 	});
			// });
			</script>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->

	<?php do_action('sydney_after_footer'); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
