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

get_header(); ?>
<div class="span-13 contentcolumn">
<?php
	/* Start the Loop */
	while ( have_posts() ) : the_post();
	$cat_level2 = get_the_category();
	echo $cat_level2[0]->name;
	$parent = $cat_level2[0]->parent;

	//load object for parent category
	$parent_name = get_category($parent, false);

	//grab a category name
	// $parent_name = $parent_name->name;
	echo '<pre>';
	print_r($parent_name);
	die();
		echo getPostViews(get_the_ID());
		echo 'luot tai:' . get_count_download(get_the_ID());
		setPostViews(get_the_ID());
		$file = get_field('file_upload');
		echo '<br><a onclick="count_dowload(\'' . get_the_ID() . '\');" href="' . $file['url'] . '">
			<span>Tải về máy</span>
		</a>';
		get_template_part( 'template-parts/post/content', get_post_format() );
		
		// If comments are open or we have at least one comment, load up the comment template.
		if ( comments_open() || get_comments_number() ) :
			comments_template();
		endif;

		the_post_navigation( array(
			'prev_text' => '<span class="screen-reader-text">' . __( 'Previous Post', 'twentyseventeen' ) . '</span><span aria-hidden="true" class="nav-subtitle">' . __( 'Previous', 'twentyseventeen' ) . '</span> <span class="nav-title"><span class="nav-title-icon-wrapper">' . twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '</span>%title</span>',
			'next_text' => '<span class="screen-reader-text">' . __( 'Next Post', 'twentyseventeen' ) . '</span><span aria-hidden="true" class="nav-subtitle">' . __( 'Next', 'twentyseventeen' ) . '</span> <span class="nav-title">%title<span class="nav-title-icon-wrapper">' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ) . '</span></span>',
		) );

	endwhile; // End of the loop.
?>
	<h3 class="breakcolumn">
    	<a title="TRANG CHỦ" href=""><img src="<?=get_template_directory_uri()?>/assets/images/home.png" alt="TRANG CHỦ"></a>
			<span class="breakcolumn">»</span>	    	
    		<a href="http://nongthonmoihatinh.vn/index.php/vi/news/" title="Tin Tức">Tin Tức</a>
			<span class="breakcolumn">»</span>	    	
    		<a href="http://nongthonmoihatinh.vn/index.php/vi/news/He-thong-to-chuc/" title="Hệ thống tổ chức">Hệ thống tổ chức</a>
    	
    </h3>
</div>

<?php get_footer();
