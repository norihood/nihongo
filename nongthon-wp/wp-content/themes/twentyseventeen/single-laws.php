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
get_header();
?>
<div class="span-13 contentcolumn">
    <?php get_template_part('template-parts/post/laws', 'breadcrumb'); ?>
    <?php 
    while (have_posts()) {
        the_post();
        setPostViews(get_the_ID());
    ?>
    <div class="archives_links">
        <strong>Thể loại: </strong>
        <?php
        if ($term = get_the_terms( get_the_ID(), LOAI_VAN_BAN )) {
            echo '<a title="' . $term[0]->name . '" href="' . get_term_link($term[0]->term_id) . '">'
                .  $term[0]->name . '</a>';
        }
        ?>
    </div>
    <table class="archives_list">
        <thead>
            <tr>
                <td colspan="2">Tên / Số / ký hiệu : <strong style="color:red"><?=get_the_title()?></strong></td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td width="25%" valign="top">Về việc / trích yếu</td>
                <td valign="top"><p align="justify"><?=wp_strip_all_tags(get_the_excerpt())?></p></td>
            </tr>
        </tbody>
        <tbody class="second">
            <tr>
                <td>Ngày ban hành</td>
                <td><strong><?= get_the_date()?></strong></td>
            </tr>
        </tbody>
        <tbody>
            <tr>
                <td>Loại văn bản</td>
                <td>
                <?php
                if ($term = get_the_terms( get_the_ID(), LOAI_VAN_BAN )) {
                    echo '<a title="' . $term[0]->name . '" href="' . get_term_link($term[0]->term_id) . '">'
                        . '<strong>' . $term[0]->name . '</strong></a>';
                }
                ?>
                </td>
            </tr>
        </tbody>
        <tbody>
            <tr>
                <td>Đơn vị / phòng ban</td>
                <td>
                <?php
                if ($term = get_the_terms( get_the_ID(), DON_VI_PHONG_BAN )) {
                    echo '<a title="' . $term[0]->name . '" href="' . get_term_link($term[0]->term_id) . '">'
                        . '<strong>' . $term[0]->name . '</strong></a>';
                }
                ?>
                </td>
            </tr>
        </tbody>
        <tbody class="second">
            <tr>
                <td>Lĩnh vực</td>
                <td>
                <?php
                if ($term = get_the_terms( get_the_ID(), LINH_VUC )) {
                    echo '<a title="' . $term[0]->name . '" href="' . get_term_link($term[0]->term_id) . '">'
                        . '<strong>' . $term[0]->name . '</strong></a>';
                }
                ?>
                </td>
            </tr>
        </tbody>
        <tbody>
            <tr>
                <td>Người ký duyệt</td>
                <td><strong><?php echo get_post_meta(get_the_ID(), 'signer', true) ?></strong></td>
            </tr>
        </tbody>
        <tbody class="second">
            <tr>
                <td>Cơ quan / đơn vị ban hành</td>
                <td>
                <?php
                if ($term = get_the_terms( get_the_ID(), CO_QUAN_BAN_HANH )) {
                    echo '<a title="' . $term[0]->name . '" href="' . get_term_link($term[0]->term_id) . '">'
                        . '<strong>' . $term[0]->name . '</strong></a>';
                }
                ?>
                </td>
            </tr>
        </tbody>
        <tbody>
            <tr>
                <td colspan="2">
                    <?php 
                    if ($file = get_field('file_upload')) {
                        echo '<a onclick="count_dowload(\'' . get_the_ID() . '\');" href="' . $file['url'] . '">
                            <span style="font-weight: bold" class="archives_down ' . get_class_file($file['mime_type']) . '">Tải về máy</span>
                        </a>';
                    } else {
                        echo 'Không có văn bản.';
                    }
                    ?>
                    <span class="view_and_download">Đã xem : <?=getPostViews(get_the_ID())?> | Đã tải: <span id="numdow"><?=get_count_download(get_the_ID())?></span></span>
                </td>
            </tr>
        </tbody>
    </table>
    <?php } ?>
    <input type="button" class="button-2" value="Quay lại" onclick="history.go(-1)">
</div>
<!-- right sidebar -->
<?php 
set_query_var( 'page_laws', true );
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<!-- popup send mail -->
<?php get_template_part('template-parts/post/content', 'sendmail'); ?>
<?php
get_footer();
?>