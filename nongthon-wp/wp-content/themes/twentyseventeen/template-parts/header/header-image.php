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
    <nav>
        <ul class="nav fl p_nav">
            <li class=""><a title="Trang chủ" href="/"><span><strong>•</strong>Trang chủ</span></a></li>
            <li class=""><a title="Giới thiệu" href="/gioi-thieu/"><span><strong>•</strong>Giới thiệu</span></a></li>
            <li class=""><a title="Văn bản nông thôn mới" href="/van-ban-nong-thon-moi/"><span><strong>•</strong>Văn bản nông thôn mới</span></a></li>
            <li class=""><a title="Thư viện ảnh" href="/thu-vien-anh/"><span><strong>•</strong>Thư viện ảnh</span></a></li>
            <li class=""><a title="Hỏi đáp" href="/hoi-dap/"><span><strong>•</strong>Hỏi đáp</span></a></li>
            <li class=""><a title="Video" href="/video/"><span><strong>•</strong>Video</span></a></li>
            <li class=""><a title="Hòm thư" href="/hom-thu/"><span><strong>•</strong>Hòm thư</span></a></li>
        </ul>
    </nav>
</div>
<div id="message"></div>
<div class="clock fl">
    <span id="divclock" style="font-weight: 700;"></span>
</div>
<form action="<?=home_url()?>" method="get" class="search fr">
    <fieldset>
        <input class="txt" type="text" name="s" id="topmenu_search_query" maxlength="60">
        <input class="submit" type="submit" value="Go" name="topmenu_search_submit" id="topmenu_search_submit">
    </fieldset>
</form>
<div class="top_slogan">
    <marquee behavior="scroll" direction="left" width="535" scrolldelay="30" scrollamount="2"><font color="ff0000">
        <strong>GƯƠNG MẪU, CHỦ ĐỘNG, TÂM HUYẾT, KHOA HỌC, HIỆU QUẢ</strong></font>
    </marquee>
</div>