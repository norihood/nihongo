<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', 'tim-kiem' );
    get_template_part('template-parts/post/breadcrumb');
    get_template_part('template-parts/search/search', 'form');
    ?>
    <div id="search_result">
        
    <?php
    if (have_posts()) : ?>
        <div class="result-mod">
            Kết quả tìm kiếm : <?php global $wp_query;
                                echo $wp_query->found_posts; ?>
        </div>
        <div class="result-frame">
        <?php 
        /* Start the Loop */
        while (have_posts()) {
            the_post();
            $post_type = get_post_type();
            if ($post_type == 'post') {
                $description = get_post_meta( get_the_ID(), 'description', true );
                echo '<div class="result-title">
                        <a href="' . get_permalink() . '">' . get_the_title() . '</a>
                    </div>
                    <div class="result-content">'
                        . $description .
                    '</div>';
            } elseif ($post_type == 'laws') {
                echo '<div class="result-title">
                        <a href="' . get_permalink() . '">' . get_the_title() . '</a>
                    </div>
                    <div class="result-content">'
                        . wp_strip_all_tags(get_the_excerpt()) .
                    '</div>';
            } elseif ($post_type == 'faq') {
                $term = get_the_terms( get_the_ID(), PHAN_LOAI );
                if (!empty($term)) {
                    echo '<div class="result-title">
                            <a href="' . get_term_link($term[0]->term_id) . '#answer_' . get_the_ID() . '">' . get_the_title() . '</a>
                        </div>
                        <div class="result-content">'
                            . get_post_meta( get_the_ID(), 'question', true ) .
                        '</div>';
                }
            } elseif ($post_type == 'page') {
                echo '<div class="result-title">
                        <a href="' . get_permalink() . '">' . get_the_title() . '</a>
                    </div>
                    <div class="result-content">'
                        . text_limit(wp_strip_all_tags(get_the_content()), 40) .
                    '</div>';
            }
        } // End of the loop.
        wp_pagenavi();
         ?>
        </div>
    <?php else :
            echo '<div class="result-mod">Không tìm thấy dữ liệu nào có liên quan đến "' . $_GET['s'] . '"</div>';
        endif;
    ?>
    </div>
</div><!-- .wrap -->
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
