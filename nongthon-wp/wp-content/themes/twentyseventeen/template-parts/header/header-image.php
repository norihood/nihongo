<?php
/**
 * Displays header media
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 * @author PhuongNLT
 */
?>

<div id="header">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1000" height="200">
        <param name="movie" value="<?php echo get_template_directory_uri() . '/assets/images/banner_phucit.swf' ?>">
        <param name="quality" value="high">
        <embed src="<?php echo get_template_directory_uri() . '/assets/images/banner_phucit.swf' ?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="200">
    </object>
    <div id="logo">
        <!-- <a title="Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh" href="/index.php/vi/"><img src="/images/logo.png" alt="Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh" /></a>-->
    </div>
    <!-- <span class="sitename">
        Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh-->
</div>

<div class="nav">
    <?php //if (function_exists(clean_custom_menus())) clean_custom_menus(); ?>
    <?php 
    $post_current = get_post();
    $van_ban_menu = $faq_menu = $video_menu = $about_menu = $album_menu = $contact_menu = '';
    if (!is_search()) {
        if ($post_current) {
            switch ($post_current->post_type) {
                case VAN_BAN_POST_TYPE:
                    $van_ban_menu = 'current';
                    break;
                case FAQ_POST_TYPE:
                    $faq_menu = 'current';
                    break;
                case VIDEO_POST_TYPE:
                    $video_menu = 'current';
                    break;
                case 'page':
                    if ($post_current->post_name == VIDEO_PAGE_SLUG) {
                        $video_menu = 'current';
                    } elseif ($post_current->post_name == ABOUT_PAGE_SLUG) {
                        $about_menu = 'current';
                    } elseif ($post_current->post_name == ALBUM_PAGE_SLUG) {
                        $album_menu = 'current';
                    } elseif ($post_current->post_name == FAQ_PAGE_SLUG || $post_current->post_name == QUESTION_PAGE_SLUG) {
                        $faq_menu = 'current';
                    } elseif ($post_current->post_name == CONTACT_PAGE_SLUG) {
                        $contact_menu = 'current';
                    } elseif ($post_current->post_name == VAN_BAN_PAGE_SLUG) {
                        $van_ban_menu = 'current';
                    }
                    break;
                default:break;
            }
        } else {
            $currentTaxonomy = get_query_var('taxonomy');//get_queried_object();
            $taxObject = get_taxonomy($currentTaxonomy);
            $postTypeArray = $taxObject->object_type;
            if (is_array($postTypeArray)) {
                if (in_array(VAN_BAN_POST_TYPE, $postTypeArray)) {
                    $van_ban_menu = 'current';
                } elseif (in_array(FAQ_POST_TYPE, $postTypeArray)) {
                    $faq_menu = 'current';
                } elseif (in_array(VIDEO_POST_TYPE, $postTypeArray)) {
                    $video_menu = 'current';
                }
            }
        }
        
    }
    ?>
    <nav>
        <ul class="nav fl p_nav">
            <li class=""><a title="Trang chủ" href="/"><span><strong>•</strong>Trang chủ</span></a></li>
            <li class="<?=$about_menu?>"><a title="Giới thiệu" href="/gioi-thieu/"><span><strong>•</strong>Giới thiệu</span></a></li>
            <li class="<?=$van_ban_menu?>"><a title="Văn bản nông thôn mới" href="/van-ban-nong-thon-moi/"><span><strong>•</strong>Văn bản nông thôn mới</span></a></li>
            <li class="<?=$album_menu?>"><a title="Thư viện ảnh" href="/thu-vien-anh/"><span><strong>•</strong>Thư viện ảnh</span></a></li>
            <li class="<?=$faq_menu?>"><a title="Hỏi đáp" href="/hoi-dap/"><span><strong>•</strong>Hỏi đáp</span></a></li>
            <li class="<?=$video_menu?>"><a title="Video" href="/video/"><span><strong>•</strong>Video</span></a></li>
            <li class="<?=$contact_menu?>"><a title="Hòm thư" href="/hom-thu/"><span><strong>•</strong>Hòm thư</span></a></li>
        </ul>
    </nav>
</div>
<div id="message"></div>
<div class="clock fl">
    <span id="divclock" style="font-weight: 700;"></span>
</div>
<form action="<?=home_url()?>" method="get" class="search fr" id="topmenu_search">
    <fieldset>
        <input class="txt" type="text" name="s" maxlength="60">
        <input class="submit" type="submit" value="Go" name="topmenu_search_submit" id="topmenu_search_submit">
    </fieldset>
</form>
<div class="top_slogan">
    <marquee behavior="scroll" direction="left" width="535" scrolldelay="30" scrollamount="2"><font color="ff0000">
        <strong>GƯƠNG MẪU, CHỦ ĐỘNG, TÂM HUYẾT, KHOA HỌC, HIỆU QUẢ</strong></font>
    </marquee>
</div>