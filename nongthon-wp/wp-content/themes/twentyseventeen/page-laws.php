<?php
/*
 Template Name: van-ban
 */
 ?> 
<?php get_header(); ?>
<?php 
add_filter('posts_where','post_key_filter',10,2);
$query_args = array(
    'post_type' => VAN_BAN_POST_TYPE,
    'post_status' => 'publish',
    'paged' => (get_query_var('paged')) ? get_query_var('paged') : 1,
    'posts_per_page' => absint(get_option( 'posts_per_page' ))
);
$advanced_search_flg = false;
$taxonomies = get_taxonomies(['object_type' => array(VAN_BAN_POST_TYPE)], 'objects', 'and');
if ($taxonomies) {
    $tax_queries = [];
    foreach ($taxonomies  as $taxonomy ) {
        if (isset($_GET['field_' . $taxonomy->name]) && $_GET['field_' . $taxonomy->name] != '') {
            $tax_queries[] = array(
                'taxonomy' => $taxonomy->name,
                'field' => 'term_id',
                'terms' => $_GET['field_' . $taxonomy->name],
            );
            $advanced_search_flg = true;
        }
    }
}
if (!empty($tax_queries)) {
    $query_args['tax_query'] = $tax_queries;
}
if (isset($_GET['text_option']) && $_GET['text_option'] != '') {
    $meta_queries = [];
    if ($_GET['text_option'] == 'title') {
        $query_args['post_title'] = $_GET['text_search'];
    } elseif ($_GET['text_option'] == 'excerpt') {
        $query_args['post_excerpt'] = $_GET['text_search'];
    } elseif ($_GET['text_option'] == 'signer') {
        $meta_queries[] = array(
            'key' => 'signer',
            'value' => $_GET['text_search'],
            'compare' => 'LIKE'
        );
    }
    if (!empty($meta_queries)) {
        $query_args['meta_query'] = $meta_queries;
    }
    $advanced_search_flg = true;
} elseif (isset($_GET['text_search']) && $_GET['text_search'] != '') {
    $query_args['search_all'] = $_GET['text_search'];
    $meta_queries[] = array(
        'key' => 'signer',
        'value' => '',
        'compare' => 'LIKE'
    );
    $query_args['meta_query'] = $meta_queries;
}
if (isset($_GET['fullq']) && $_GET['fullq'] == '1') {
    $query_args['compare_all'] = true;
    $advanced_search_flg = true;
}
if (isset($_GET['start_date']) && $_GET['start_date'] != '') {
    $query_args['post_date_start'] = $_GET['start_date'];
    $advanced_search_flg = true;
}
if (isset($_GET['end_date']) && $_GET['end_date'] != '') {
    $query_args['post_date_end'] = $_GET['end_date'];
    $advanced_search_flg = true;
}
$query = new WP_Query( $query_args );
remove_filter('posts_where','post_key_filter',10,2);
?>
<div class="span-13 contentcolumn">
    <?php
        get_template_part('template-parts/post/laws', 'breadcrumb');
        set_query_var( 'advanced_search_flg', $advanced_search_flg );
        get_template_part('template-parts/search/search', 'laws');
        if ( $query->have_posts() ) {
            set_query_var( 'posts_array', $query->posts );
            get_template_part('template-parts/post/content', 'laws');
            wp_pagenavi( array( 'query' => $query ) );
        } else {
            echo '<p>Chưa có văn bản nào.</p>';
        }
    ?>
</div>
<!-- right sidebar -->
<?php 
set_query_var( 'page_laws', true );
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>
