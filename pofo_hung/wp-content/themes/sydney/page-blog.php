<?php 
/* 
 * Template Name: CustomPageT1
 * Template Post Type: post, page, product
 *
 */ ?>
 
<?php get_header(); ?>
 
<div id="primary" class="content-area aaaaaaaaaaa">
    <main id="main" class="site-main" role="main">
        <?php if ( have_posts() ) : ?>

        <div class="posts-layout">
            <?php while ( have_posts() ) : the_post(); ?>

                <?php
                    if ( $layout != 'classic-alt' ) {
                        get_template_part( 'content', get_post_format() );
                    } else {
                        get_template_part( 'content', 'classic-alt' );
                    }
                ?>

            <?php endwhile; ?>
        </div>

        <?php
            if (function_exists('wp_paginate')):
                echo 'aaaaaaaaaaaaa2';
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
 
    </main><!-- .site-main -->
 
 
</div><!-- .content-area -->
 
<?php get_footer(); ?>