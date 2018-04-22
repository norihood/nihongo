<?php
/**
 * post video here
 */
get_header();
?>
<div class="span-13 contentcolumn">
    <script src="https://www.youtube.com/iframe_api"></script>
    <?php
    set_query_var( 'slug_page', VIDEO_PAGE_SLUG );
    get_template_part('template-parts/post/breadcrumb');?>
    <div id="sw_cont">
    <?php
    /* Start the Loop */
    while (have_posts()) { the_post(); ?>
        <div class="video_main detail_video">
            <img width="6" height="6" style="vertical-align: middle;" src="<?=get_template_directory_uri()?>/assets/images/navi.gif" alt="">
            <a href="" title="<?=get_the_title()?>"><u><?=get_the_title()?></u></a>
            (<?=getPostViews(get_the_ID())?> lượt xem)
        </div>
        <br>
        <div id="video_youtube"></div>
        <br>
        <table cellspacing="4" cellpadding="4" style="width: 98%; border-top: solid 1px #cccccc; border-bottom: solid 1px #cccccc;">
            <tbody>
                <tr>
                    <td>
                        <div></div>
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <div class="video_main">
            <img width="6" height="6" style="vertical-align: middle;" src="<?=get_template_directory_uri()?>/assets/images/navi.gif" alt="">
            Các video cùng chủ đề
        </div>
        <?php
        //Get array of terms
        $terms = get_the_terms( get_the_ID() , LOAI_VIDEO, 'string');
        //Pluck out the IDs to get an array of IDS
        $term_ids = wp_list_pluck($terms, 'term_id');
        $args = array(
            'post_type'    => VIDEO_POST_TYPE,
            'tax_query'    => array(
                array(
                    'taxonomy' => LOAI_VIDEO,
                    'field'    => 'id',
                    'terms'    => $term_ids,
                    'operator' => 'IN' //Or 'AND' or 'NOT IN'
                )),
            'post__not_in' => array(get_the_ID()),
            'posts_per_page' => '-1'
        );
        $query_related = new WP_Query($args);
        //Loop through posts and display...
        if($query_related->have_posts()) {
            $post_videos = $query_related->posts;
            foreach ($post_videos as $key => $video) {
                $count_view = getPostViews($video->ID);
                echo '<div class="video_item">
                    <div class="item_child">
                        <a href="' . get_permalink($video->ID) . '" title="' . $video->post_title . '">
                            <img src="' . (new Video_Thumbnails())->get_video_thumbnail($video->ID) . '" alt="" width="">
                        </a>
                        <div class="title_video">
                            <a href="' . get_permalink($video->ID) . '" title="' . $video->post_title . '">' . $video->post_title . '</a>
                        </div>
                        <p class="views_video">Đã xem: ' . $count_view . '</p>
                    </div>
                </div>';
            }
            echo '<div class="clear"></div>';
        }
        ?>
<!--        <div class="video_main">
            <img width="6" height="6" style="vertical-align: middle;" src="<?=get_template_directory_uri()?>/assets/images/navi.gif" alt="">
            Các chủ đề khác
        </div>-->

        <?php 
            $url = get_post_meta(get_the_ID(), 'url_youtube', true);
            parse_str( parse_url( $url, PHP_URL_QUERY ), $my_array_of_vars );
            $id_youtube = $my_array_of_vars['v']; 
        ?>

        <script type="text/javascript">
            var player, playing = false;
            function onPlayerStateChange(event) {
                if (!playing) {
                    $.ajax({
                        type: "post",
                        dataType: "json",
                        url: '<?php echo admin_url('admin-ajax.php'); ?>',
                        data: {
                            action: "youtube_view", //Tên action
                            post_id: <?=get_the_ID()?>
                        },
                        context: this,
                        beforeSend: function () {
                            //Làm gì đó trước khi gửi dữ liệu vào xử lý
                        },
                        success: function (response) {
                            //Làm gì đó khi dữ liệu đã được xử lý
                            if (response.success) {
                                console.log(response.data);
                            } else {
                                console.log('Đã có lỗi xảy ra');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log('Có lỗi xảy ra.');
                            //Làm gì đó khi có lỗi xảy ra
                            console.log('The following error occured: ' + textStatus, errorThrown);
                        }
                    });
                    playing = true;
                }
            }
            if (document.getElementById('iframe_api') === null) {
                var tag = document.createElement('script');
                tag.src = "https://www.youtube.com/iframe_api";
                tag.id = "iframe_api";
                var firstScriptTag = document.getElementsByTagName('script')[0];
                firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
            }
            else {
                runPlayer();
            }
            function runPlayer(){
                var player;
                player = new YT.Player('video_youtube', {
                    height: '360',
                    width: '540',
                    videoId: '<?=$id_youtube?>',
                    events: {
                        onStateChange: onPlayerStateChange
                    }
                });
            }
            window.onYouTubeIframeAPIReady = function () {
                runPlayer();
            };
        </script>
    <?php } ?>
    </div>
</div>
<!-- right sidebar -->
<?php get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php
get_footer();
?>