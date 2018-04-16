<?php
/*
 Template Name: question
 */
 ?> 
<?php
get_header(); ?>
<style>

</style>
<div class="span-13 contentcolumn">

    <?php
    set_query_var( 'slug_page', 'cau-hoi' );
    get_template_part('template-parts/post/breadcrumb');?>
    <div class="content-box">
        <form id="fcontact" method="post" action="" onsubmit="return sendcontact('6');">
            <div class="contact-form box-border content-box">
                <p class="rows">
                    Tiêu đề:
                    <br>
                    <input type="text" maxlength="255" value="" id="ftitle" name="ftitle" class="input">
                </p>
                <p class="rows">
                    Thuộc chủ đề:
                    <br>
                    <select id="catid" name="catid">
                        <option value="0" selected="selected"></option>
                        <?php
                        $term_list = get_terms( PHAN_LOAI, array( 'parent' => 0, 'hide_empty' => false ) );
                        if ($term_list) {
                            foreach ($term_list as $key => $pterm) {
                                echo '<option value="' . $pterm->term_id . '">' . $pterm->name . '</option>';
                            }
                        }
                        ?>
                    </select>
                </p>

                <p class="rows">
                    Họ và tên:
                    <br>
                    <input type="text" maxlength="100" value="" id="fname" name="fname" class="input">
                </p>
                <p class="rows">
                    Địa chỉ email:
                    <br>
                    <input type="email" maxlength="60" value="" id="femail_iavim" name="femail" class="input">
                </p>

                <p class="rows">
                    Điện thoại:
                    <br>
                    <input type="text" maxlength="60" value="" id="fphone" name="fphone" class="input">
                </p>
                <p class="rows">
                    Gửi đến bộ phận:
                    <br>
                    <select class="sl2" id="fpart" name="fpart">
                        <option value="1">Webmaster</option>

                    </select>
                </p>
                <p class="rows">
                    Nội dung:
                    <br>
                    <textarea cols="50" rows="3" id="fcon" name="fcon" onkeyup="return nv_ismaxlength(this, 1000);"></textarea>
                </p>
                <p class="rows">
                    <div class="g-recaptcha" data-sitekey="6LffzkkUAAAAAOSB3XMwNGhMieqhNGP7uNv0MhAF" data-callback="recaptchaCallback"></div>
                </p>
                <p class="rows">
                    <input type="submit" value="Gửi thông tin" id="btsend" name="btsend" class="button">&nbsp; 
                    <input type="reset" value="Xóa trắng" class="button-2">
                </p>
            </div>
        </form>

    </div>
    
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
