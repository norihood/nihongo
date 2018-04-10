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
    <?php
    /* Start the Loop */
    while (have_posts()) : the_post();
        $arr_breadcrumb = array();
        $cat_level2     = get_the_category();
        if ($cat_level2) {
            $arr_breadcrumb[] = array(
                'name' => $cat_level2[0]->name,
                'url'  => get_category_link($cat_level2[0]->term_id)
            );

            $parent = $cat_level2[0]->parent;
            while ($parent != CATEGORY_NEWS_ID) {
                //load object for parent category
                $parent_obj = get_category($parent, false);
                if ($parent_obj) {
                    $arr_breadcrumb[] = array(
                        'name' => $parent_obj->name,
                        'url'  => get_category_link($parent_obj->term_id)
                    );
                    $parent           = $parent_obj->parent;
                }
                else {
                    break;
                }
            }
        }
        $arr_breadcrumb = array_reverse($arr_breadcrumb);
        ?>

        <h3 class="breakcolumn">
            <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
            <span class="breakcolumn">»</span>
            <?php foreach ($arr_breadcrumb as $key => $cat_breadcrumb) {
                if ($key != 0) {
                    echo '<span class="breakcolumn">»</span>';
                }
                echo '<a href="' . $cat_breadcrumb['url'] . '" title="' . mb_strtoupper($cat_breadcrumb['name']) . '">' . mb_strtoupper($cat_breadcrumb['name']) . '</a>';
            } ?>
        </h3>
        <br><img alt="" src="<?= get_template_directory_uri() ?>/assets/images/bannerhcm.jpg" style="width: 540px; height: 71px; ">
        <div class="news_column" style="padding:0 !important;margin:0 !important;">
            <div id="news_detail">
                <h1><?=get_the_title()?></h1>
                <span class="time"><?=get_thu(date('l', get_post_time()))?> - <?=date('d/m/Y H:i', get_post_time())?></span>
                <div class="control">
                    <ul>
                        <li>
                            <a rel="nofollow" class="sendmail" title="Gửi bài viết qua email" href="javascript:void(0);" onclick="NewWindow(&#39;/index.php/vi/news/sendmail/Nhieu-nguoi-cung-quan-tam/Go-kho-nhung-van-de-nong-tai-phien-doi-thoai-Thu-tuong-va-nong-dan-77444/&#39;,&#39;&#39;,&#39;500&#39;,&#39;400&#39;,&#39;no&#39;);return false"></a>
                        </li>
                        <li>
                            <a class="print" title="In ra" href="javascript: void(0)" onclick="NewWindow(&#39;/index.php/vi/news/print/Nhieu-nguoi-cung-quan-tam/Go-kho-nhung-van-de-nong-tai-phien-doi-thoai-Thu-tuong-va-nong-dan-77444/&#39;,&#39;&#39;,&#39;840&#39;,&#39;768&#39;,&#39;yes&#39;);return false"></a>
                        </li>
                        <li>
                            <a class="savefile" title="Lưu bài viết này" href="http://nongthonmoihatinh.vn/index.php/vi/news/savefile/Nhieu-nguoi-cung-quan-tam/Go-kho-nhung-van-de-nong-tai-phien-doi-thoai-Thu-tuong-va-nong-dan-77444/"></a>
                        </li>
                    </ul>
                </div>
                <div style="clear: both;"></div>
                <div id="hometext">
                    <?php echo get_post_meta(get_the_ID(), 'description', true); ?>
                </div>
                <div class="bodytext">
                    <?php echo the_content(); ?>
                </div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_0xmt"></div>
                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_inline_share_toolbox_n4hj"></div>
                <div>Click để đánh giá bài viết: <?php if(function_exists('the_ratings')) { the_ratings(); } ?></div>
                
            </div>
            <div class="keywords">
                <strong>Từ khóa: </strong>
                <?php $tags_arr = wp_get_post_tags(get_the_ID());
                if ($tags_arr) {
                    foreach ($tags_arr as $tag) {
                        echo '<a title="' . $tag->name . '" href="' . get_tag_link($tag->term_id) . '">
                                <em>' . $tag->name . '</em>
                            </a>';
                    }
                }
                ?>
            </div>
            <div id="idcomment">
                <ul class="control">
                    <li>
                        <a onclick="nv_show_hidden(&#39;showcomment&#39;,2);" href="javascript:void(0);"><img src="<?=get_template_directory_uri() ?>/assets/images/comment.png" alt="Show comment"><strong>Xem phản hồi</strong></a>
                    </li>
                    <li>
                        -- <a onclick="nv_show_hidden(&#39;formcomment&#39;,2);" href="javascript:void(0);"><img alt="Add comment" src="<?=get_template_directory_uri() ?>/assets/images/comment_add.png"><strong>Gửi phản hồi</strong></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
                <?php comments_template( '', true ); ?>
            </div>
            <script type="text/javascript">
                nv_show_hidden('formcomment',2);
            </script>
            <div class="clear"></div>
            <p>
                <strong>Những tin cũ hơn</strong>
            </p>
            <ul class="related">
                <li>
                    <a title="Bộ trưởng Y tế: Sẽ tăng viện phí trong năm 2018" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Bo-truong-Y-te-Se-tang-vien-phi-trong-nam-2018-77437/">Bộ trưởng Y tế: Sẽ tăng viện phí trong năm 2018</a>
                    <span class="date">(10/04/2018)</span>
                </li>
                <li>
                    <a title="Ngày 10/4 bắt đầu phiên họp thứ 23 của Ủy ban Thường vụ Quốc hội" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Ngay-10-4-bat-dau-phien-hop-thu-23-cua-Uy-ban-Thuong-vu-Quoc-hoi-77436/">Ngày 10/4 bắt đầu phiên họp thứ 23 của Ủy ban Thường vụ Quốc hội</a>
                    <span class="date">(10/04/2018)</span>
                </li>
                <li>
                    <a title="6 loại phân bón hữu cơ có sẵn tại nhà để trồng rau sạch" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/6-loai-phan-bon-huu-co-co-san-tai-nha-de-trong-rau-sach-77435/">6 loại phân bón hữu cơ có sẵn tại nhà để trồng rau sạch</a>
                    <span class="date">(10/04/2018)</span>
                </li>
                <li>
                    <a title="Xã Diễn Quảng (Diễn Châu) đón Bằng công nhận chuẩn nông thôn mới" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Xa-Dien-Quang-Dien-Chau-don-Bang-cong-nhan-chuan-nong-thon-moi-77434/">Xã Diễn Quảng (Diễn Châu) đón Bằng công nhận chuẩn nông thôn mới</a>
                    <span class="date">(10/04/2018)</span>
                </li>
                <li>
                    <a title="Giá heo (lợn) hơi hôm nay 10/4: Nhiều nơi giá heo tăng liên tục" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Gia-heo-lon-hoi-hom-nay-10-4-Nhieu-noi-gia-heo-tang-lien-tuc-77433/">Giá heo (lợn) hơi hôm nay 10/4: Nhiều nơi giá heo tăng liên tục</a>
                    <span class="date">(10/04/2018)</span>
                </li>
                <li>
                    <a title="Phát động cuộc thi “Tìm hiểu 50 năm Chiến thắng Đồng Lộc”" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Phat-dong-cuoc-thi-Tim-hieu-50-nam-Chien-thang-Dong-Loc-77405/">Phát động cuộc thi “Tìm hiểu 50 năm Chiến thắng Đồng Lộc”</a>
                    <span class="date">(09/04/2018)</span>
                </li>
                <li>
                    <a title="Vườn mẫu cho thu nhập gần 600 triệu đồng" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Vuon-mau-cho-thu-nhap-gan-600-trieu-dong-77404/">Vườn mẫu cho thu nhập gần 600 triệu đồng</a>
                    <span class="date">(09/04/2018)</span>
                </li>
                <li>
                    <a title="Tập trung tuyên truyền xây dựng NTM đi vào chiều sâu, bền vững" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Tap-trung-tuyen-truyen-xay-dung-NTM-di-vao-chieu-sau-ben-vung-77403/">Tập trung tuyên truyền xây dựng NTM đi vào chiều sâu, bền vững</a>
                    <span class="date">(09/04/2018)</span>
                </li>
                <li>
                    <a title="Thêm nhiều giếng nhiễm dầu, cuộc sống người dân Hương Trạch bị đảo lộn" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Them-nhieu-gieng-nhiem-dau-cuoc-song-nguoi-dan-Huong-Trach-bi-dao-lon-77402/">Thêm nhiều giếng nhiễm dầu, cuộc sống người dân Hương Trạch bị đảo lộn</a>
                    <span class="date">(09/04/2018)</span>
                </li>
                <li>
                    <a title="Chuyên gia Nhật hiến kế để nông dân tăng thu nhập" href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Chuyen-gia-Nhat-hien-ke-de-nong-dan-tang-thu-nhap-77394/">Chuyên gia Nhật hiến kế để nông dân tăng thu nhập</a>
                    <span class="date">(09/04/2018)</span>
                </li>
            </ul>
        </div>
        &nbsp;
        
    <?php
    endwhile; // End of the loop.
    ?>
</div>

<?php
get_footer();
