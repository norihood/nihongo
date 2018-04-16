<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <?php
    get_template_part('template-parts/post/faq', 'breadcrumb');
    $term = get_term_by( 'slug', get_query_var('term'), get_query_var('taxonomy') );
    $tax = get_query_var( 'taxonomy' );
    ?>
    <div id="faq">
        <div class="faq-header" style="display: inline-block;">
            <h4><a href="/hoi-dap/">HỎI - ĐÁP</a> » <a href=""><?=$term->name?></a></h4>
        </div>
        <div style="float: right">
            <a href="/cau-hoi/">Bấm vào đây để đặt câu hỏi <img src="<?= get_template_directory_uri() ?>/assets/images/question.jpg" widht="100" style="cursor: pointer; vertical-align: middle;" alt="" height="40"></a>
        </div>
    
    <?php
    $post_type_arr = get_post_types_by_taxonomy($tax);
    // get post array of custom post type
    $args = array(
        'posts_per_page' => '-1',
        'post_type' => FAQ_POST_TYPE,
        'tax_query' => array(
            array(
                'taxonomy' => get_query_var('taxonomy'),
                'field' => 'term_id',
                'terms' => $term->term_id,
            )
        )
    );
    $query = new WP_Query( $args );
    if ( $query->have_posts() ) {
        $html_answers = '';
        echo '<div class="show_row">';
        foreach ($query->posts as $post) {
            echo '<div class="block_faq">
                    <div class="title">
                        <a href="#answer_' . $post->ID . '">' . $post->post_title . '</a>
                    </div>
                </div>';
            $html_answers .= '<div class="detail_faq" id="answer_' . $post->ID . '">
                <div class="title clearfix">
                    <div class="gotop">
                        <a href="#faq" title="Lên phía trên"><img alt="Lên phía trên" title="Lên phía trên" src="' . get_template_directory_uri() . '/assets/images/back_top.png" width="16" height="16"></a>
                    </div>'
                    . $post->post_title .
                '</div>
                <div class="question">
                    <strong>Câu hỏi:</strong><br>
                    <p><em>' . get_post_meta($post->ID, 'question', true) . '</em></p>
                </div>
                <div class="answer">
                    <strong>Trả lời:</strong><br>' . do_shortcode($post->post_content) .
                '</div>
            </div>';
        }
        echo '</div>';
        echo '<div class="show_detail">' . $html_answers . '</div>';
    } else {
        echo '<p>Chưa có câu hỏi nào.</p>';
    }
    ?>
    </div>
</div>
<!-- right sidebar -->
<?php 
if (in_array(VAN_BAN_POST_TYPE, $post_type_arr)) {
    set_query_var( 'page_laws', true );
}
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>