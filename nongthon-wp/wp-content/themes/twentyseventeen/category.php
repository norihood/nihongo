<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <!-- breadcrumb -->
    <?php get_template_part('template-parts/post/top', 'breadcrumb'); ?>
    <?php
    // Check if there are any posts to display
    if ( have_posts() ) {
        /* Start the Loop */
        while (have_posts()) { the_post();
    ?>
        <div class="news_column list_post_in_cat">
            <div class="items clearfix">
                <?php
                $src = get_the_post_thumbnail_url(null, 'thumbnail');
                if ($src) {
                    $alt = (get_post_meta( get_post_thumbnail_id(), '_wp_attachment_image_alt', true) ?: get_the_title());
                    echo '<a href="' . get_the_permalink() . '" title="' . get_the_title() . '"><img alt="' . $alt . '" src="' . $src . '" width="120"></a>';
                }
                ?>
                <h3><a href="<?php the_permalink() ?>" title="<?php the_title() ?>"><?php the_title() ?></a></h3>
                <p>
                    <?php echo get_post_meta(get_the_ID(), 'description', true); ?>
                </p>
                <p style="text-align : right;">
                    <a href="<?php the_permalink() ?>" title="<?php the_title() ?>">Đọc tiếp</a>
                </p>

            </div>
        </div>
    <?php
        } // End of the loop.
    ?>
        
        <?php
        
        // get post related next
        $paged = get_query_var('paged') ? absint(get_query_var('paged')) : 1;
        $category_obj     = get_queried_object();
        $args = array (
            'posts_per_page' => absint(get_option( 'posts_per_page' )),
            'offset' => $paged * absint(get_option( 'posts_per_page' )),
            'category' => $category_obj->term_id
        );

        $post_related = get_posts( $args );
        if ($post_related) {
            echo '<h4>Các tin khác</h4>
                    <ul class="post_next_page">';
            foreach ($post_related as $post_rel) {
                setup_postdata( $post_rel );
                echo '<li>
                    <a href="' . get_the_permalink() . '" title="' . get_the_title() . '">' . get_the_title() . ' <span class="date">(' . get_the_date() . ') </span></a>
                </li>';
                wp_reset_postdata();
            }
            echo '</ul>';
        }
        page_nav();
    } else {
        echo '<p>Chưa có bài viết nào</p>';
    }
    ?>
</div>
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>