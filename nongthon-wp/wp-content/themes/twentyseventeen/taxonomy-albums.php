<?php
/**
* A Simple Category Template
*/
 
get_header(); ?> 
<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', MUSIC_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');?>
    <?php
    $term_current = get_queried_object();
    $singer_cat = get_field('singer_album', ALBUM_MUSIC . '_' . $term_current->term_id);
    $singer_cat = ($singer_cat != '') ? $singer_cat : 'Tổng hợp';
    setTermViews($term_current->term_id);
    $views = getTermViews($term_current->term_id);
    ?>
    <h2 class="medium greencolor mlotitle">
        <?=$term_current->name?> - <?=$singer_cat?>
    </h2>
    <p class="msmall">Lượt nghe: <?=$views?></p>
    <div>
        <?php
        // get post array of custom post type
        $args = array(
            'posts_per_page' => '-1',
            'post_type' => MUSIC_POST_TYPE,
            'tax_query' => array(
                array(
                    'taxonomy' => ALBUM_MUSIC,
                    'field' => 'term_id',
                    'terms' => $term_current->term_id
                )
            )
        );
        $query = new WP_Query( $args );
        if ( $query->have_posts() ) {
            $post_music = $query->posts;
            $ids = [];
            foreach ($post_music as $key => $music) {
                $file = get_field('file_music', $music->ID);
                $ids[] = $file['id'];
            }
            echo do_shortcode('[playlist type="audio" ids="' . implode(',', $ids) . '" loop="on" autoplay="true"]');
        } else {
            echo 'Chưa có bài hát nào.';
        }
        ?>
    </div>
    <ul class="mlo-tool fl">
        <li class="tool active"><a href="#tabs1">Gửi tặng</a></li>
        <li class="tool"><a href="#tabs2">Báo lỗi</a></li>
    </ul>
    <ul class="mlo-tool fr">
        <!-- Go to www.addthis.com/dashboard to customize your tools -->
        <div class="addthis_inline_share_toolbox_0xmt"></div>
    </ul>
    <div class="clear"></div>
    <div class="alboxw mg10 tab_content" id="tabs1" style="display: block;">
        <div class="alwrap alcontent">
            <table cellpadding="0" cellspacing="0" class="musictable">
                <tbody>
                    <tr>
                        <td class="left">Link Album:</td>
                        <td><input class="txt-full" id="albumlink" onclick="Select_all('albumlink')" type="text" value="<?=get_term_link( $term_current->term_id )?>" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <td class="left">Nhúng:</td>
                        <td><input class="txt-full" id="blogsong" onclick="Select_all('blogsong');" type="text" value="" readonly="readonly"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="alboxw mg10 tab_content" id="tabs2" style="display: none;">
        <div class="alwrap alcontent">
            <p><strong><span class="musicicon merror">&nbsp;</span>Báo lỗi</strong>: Để giúp chúng tôi quản lý tốt hơn chất lượng các bài hát bạn hãy gửi ngay thông tin khi gặp vấn đề nào đó về bài hát hoặc album này</p>
            <table cellpadding="0" cellspacing="0" class="musictable">
                <tbody>
                    <tr>
                        <td colspan="2">
                            <select class="txt-full" id="root_error" name="root_error">
                                <option value="">-- Chọn nguyên nhân --</option>
                                <option>Album không play được</option>
                                <option>Album có ca khúc chất lượng kém</option>
                                <option>Album có ca khúc bị méo tiếng</option>
                                <option>Album bị đứng nửa chừng</option>
                                <option>Album có ca khúc không nghe được âm thanh</option>
                                <option>Album có lời nhắn không lành mạnh</option>
                                <option>Nội dung album không lành mạnh</option>
                                <!--<option>Nội dung bình luận album không lành mạnh</option>-->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="left" style="width: 120px;"><label>Nhập tên bạn:</label></td>
                        <td><input class="txt-full" id="user" type="text" value=""></td>
                    </tr>
                    <tr>
                        <td colspan="2"><label>Nếu không phải một trong các nguyên nhân trên bạn vui lòng nhập nguyên nhân vào ô dưới đây.</label></td>
                    </tr>
                    <tr>
                        <td colspan="2"><textarea style="width: 100%;" id="bodyerror" name="message" rows="6"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="mcenter"><input type="submit" onclick="senderror('<?=$term_current->term_id?>', 'album');" type="button" value="Gửi"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script src="<?= get_template_directory_uri()?>/assets/js/music.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        iframe_embed('<?=get_term_link( $term_current->term_id )?>');
    });
</script>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>