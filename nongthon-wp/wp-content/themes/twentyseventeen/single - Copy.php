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

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();
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

		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->
<script type="text/javascript">
	function count_dowload(id) { alert(id);
        $.ajax({
            type : "post", //Phương thức truyền post hoặc get
            dataType : "json", //Dạng dữ liệu trả về xml, json, script, or html
            url : '<?php echo admin_url('admin-ajax.php');?>', //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
            data : {
                action: "count_download", //Tên action
                post_id : id,//Biến truyền vào xử lý. $_POST['website']
            },
            context: this,
            beforeSend: function(){
                //Làm gì đó trước khi gửi dữ liệu vào xử lý
            },
            success: function(response) {
                //Làm gì đó khi dữ liệu đã được xử lý
                if(response.success) {
                    alert(response.data);
                }
                else {
                    alert('Đã có lỗi xảy ra');
                }
            },
            error: function( jqXHR, textStatus, errorThrown ){
                //Làm gì đó khi có lỗi xảy ra
                console.log( 'The following error occured: ' + textStatus, errorThrown );
            }
        })
        return false;
    }
</script>
<?php get_footer();
