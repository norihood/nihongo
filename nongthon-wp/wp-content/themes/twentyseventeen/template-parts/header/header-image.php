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
        <param name="movie" value="<?php echo get_template_directory_uri().'/assets/images/banner_phucit.swf' ?>">
        <param name="quality" value="high">
        <embed src="<?php echo get_template_directory_uri().'/assets/images/banner_phucit.swf' ?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1000" height="200">
    </object>
    <div id="logo">
        <!-- <a title="Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh" href="/index.php/vi/"><img src="/images/logo.png" alt="Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh" /></a>-->
    </div>
    <!-- <span class="sitename">
        Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh-->
</div>

<div class="nav">
	<?php if (function_exists(clean_custom_menus())) clean_custom_menus(); ?>
</div>
<div id="message"></div>
<div class="clock fl">
    <span id="digclock" style="font-weight: 700;">19:49  &nbsp; Thứ Năm, 05/04/2018</span>
</div>
<form action="http://nongthonmoihatinh.vn/" method="get" class="search fr" onsubmit="return nv_search_submit(&#39;topmenu_search_query&#39;, &#39;topmenu_search_checkss&#39;, &#39;topmenu_search_submit&#39;, 3, 60);">
    <fieldset>
        <input type="hidden" id="topmenu_search_checkss" value="">
        <input class="txt" type="text" name="topmenu_search_query" id="topmenu_search_query" maxlength="60">
        <input class="submit" type="button" value="Go" name="topmenu_search_submit" id="topmenu_search_submit" onclick="nv_search_submit(&#39;topmenu_search_query&#39;, &#39;topmenu_search_checkss&#39;, &#39;topmenu_search_submit&#39;, 3, 60);">
    </fieldset>
</form>
<div style="text-align:center; font-size: 14px; color: red;font-weight: normal;background:url(../images/message_bg.jpg;font-family:Times New Roman,Arial,Verdana,sans-serif; margin-bottom: 5px">
    <marquee behavior="scroll" direction="left" width="535" scrolldelay="30" scrollamount="2"><font color="ff0000">
        <strong>GƯƠNG MẪU, CHỦ ĐỘNG, TÂM HUYẾT, KHOA HỌC, HIỆU QUẢ</strong></font>
    </marquee>
</div>