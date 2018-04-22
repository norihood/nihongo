<?php
/**
 * post video here
 */
get_header();
?>
<div class="span-13 contentcolumn">
    <?php
    set_query_var( 'slug_page', MUSIC_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');?>
    
    <?php
    /* Start the Loop */
    while (have_posts()) { the_post(); ?>
        <h2 class="medium greencolor mlotitle"><?=get_the_title()?> - <?php echo get_post_meta(get_the_ID() , 'singer', true) ?></h2>
        <p class="msmall">
            <?php
            setPostViews(get_the_ID());
            $views = getPostViews(get_the_ID());
            $terms = wp_get_post_terms( get_the_ID(), ALBUM_MUSIC);
            ?>
            Lượt nghe: <?=$views?> 
            | Sáng tác: <span class="greencolor"><?=get_post_meta(get_the_ID(), 'author_music', true)?></span> 
            | Album: <a class="singer" href="<?=get_term_link($terms[0]->term_id)?>" title="<?=$terms[0]->name?>"><?=$terms[0]->name?></a>
        </p>
        <div class="alboxw">
        <?php
        $file = get_field('file_music');
        echo do_shortcode('[audio src="' . $file['url'] . '" loop="on" autoplay="1"][/audio]');
        ?>
        </div>
        <ul class="mlo-tool fl">
            <li class="tool active"><a href="#tabs1">Gửi tặng</a></li>
            <li class="tool"><a href="#tabs2">Lyric</a></li>
            <li class="tool"><a href="#tabs3">Báo lỗi</a></li>
            <li><a id="download_music" name="10" href="<?php echo get_permalink(get_page_by_path( 'download-music' ))?>?post_id=<?=get_the_ID()?>">Download</a></li>
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
                            <td><input class="txt-full" id="albumlink" onclick="Select_all('albumlink')" type="text" value="<?= get_permalink(get_the_ID())?>" readonly="readonly"></td>
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
                <div class="alboxw">
                    <?php $lyric = get_post_meta(get_the_ID(), 'lyric', true);
                    if ($lyric) {
                        echo '<div class="alwrap alcontent">'
                                . nl2br($lyric) .
                            '</div>';
                    } else {
                        echo '<div class="alwrap alcontent information">
                            <div>Hiện tại chưa có lời cho bài hát này.</div>
                        </div>';
                    } ?>
                </div>
            </div>
        </div>
        <div class="alboxw mg10 tab_content" id="tabs3" style="display: none;">
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
                            <td colspan="2" class="mcenter"><input type="submit" onclick="senderror('<?= get_the_ID()?>', 'song');" type="button" value="Gửi"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="<?= get_template_directory_uri()?>/assets/js/music.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                iframe_embed('<?=get_permalink( get_the_ID() )?>');
            });
        </script>
    <?php } ?>
</div>

<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php
get_footer();
?>