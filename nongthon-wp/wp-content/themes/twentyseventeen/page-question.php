<?php
/*
 Template Name: question
 */
 ?> 
<?php
get_header(); ?>
<div class="span-13 contentcolumn">

    <?php
    set_query_var( 'slug_page', 'cau-hoi' );
    get_template_part('template-parts/post/breadcrumb');?>
    <?php
    if ('POST' == $_SERVER['REQUEST_METHOD'] && !empty($_POST['btsend'])) {
        if ( ! wp_verify_nonce( $_POST['_wpnonce'], 'p-question' ) ) {
            // This nonce is not valid.
            wp_redirect( '/cau-hoi/' ); exit;
            die( 'Security check' ); 
        }
        $new_post = array(
            'post_title'   => $_POST['ftitle'],
            'post_status'  => 'publish',
            'post_type'    => FAQ_POST_TYPE
        );
        $pid = wp_insert_post($new_post);

        wp_set_object_terms($pid, absint($_POST['fcatid']), PHAN_LOAI);
        add_post_meta($pid, 'name_of_user', $_POST['fname'], true);
        add_post_meta($pid, 'email_of_user', $_POST['femail'], true);
        add_post_meta($pid, 'phone_number', $_POST['fphone'], true);
        add_post_meta($pid, 'question', $_POST['fcontent'], true);
        echo 'Xin cảm ơn quý vị đã quan tâm! chúng tôi sẽ trả lời thư của Quý vị trong thời gian sớm nhất.'
            . '<br>Sẽ chuyển về trang đặt câu hỏi trong 5 giây nữa.';
        echo '<meta http-equiv="Refresh" content="5;url=/cau-hoi/">';
    } else {
    ?>
    <script type="text/javascript">
        var response_captcha = '';
        function recaptchaCallback() {
            response_captcha = grecaptcha.getResponse();
        };
    </script>
    <div class="content-box">
        <p class="validateTips"></p>
        <form id="fquestion" method="post" action="">
            <?php wp_nonce_field('p-question'); ?>
            <div class="contact-form box-border content-box">
                <p class="rows">
                    Tiêu đề:
                    <br>
                    <input type="text" maxlength="255" value="" id="ftitle" name="ftitle" class="input">
                </p>
                <p class="rows">
                    Thuộc chủ đề:
                    <br>
                    <select id="fcatid" name="fcatid">
                        <option value="" selected="selected"></option>
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
                    <input type="text" maxlength="60" value="" id="femail" name="femail" class="input">
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
                    <textarea cols="50" rows="5" id="fcontent" name="fcontent"></textarea>
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
    <?php } ?>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var form,
            emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
            ftitle = $('#ftitle'),
            fcatid = $("#fcatid"),
            fname = $('#fname'),
            femail = $("#femail"),
            fcontent = $("#fcontent"),
            tips = $(".validateTips");

        function updateTips(t) {
            tips.append('<p class="error">' + t + '</p>')
                .addClass("ui-state-highlight");
            setTimeout(function () {
                tips.removeClass("ui-state-highlight", 1500);
            }, 500);
        }

        function resetTipsAndForm() {
            tips.html('');
            $('#fquestion').find('input, textarea, select').removeClass('form_error');
        }

        function checkRequired(o, msg) {
            if (o.val().length < 1) {
                o.addClass("form_error");
                updateTips(msg);
                return false;
            } else {
                return true;
            }
        }

        function checkRegexp(o, regexp, n) {
            if (!(regexp.test(o.val()))) {
                o.addClass("form_error");
                updateTips(n);
                return false;
            } else {
                return true;
            }
        }

        function scroll_to_top_question() {
            $('html, body').animate({
                scrollTop: $(".contentcolumn").offset().top
            }, 'fast');
        }
        function validate_form_question() {
            var flag_check = false;
            grecaptcha.reset();
            resetTipsAndForm();

            var length_title = checkRequired(ftitle, "Hãy nhập Tiêu đề"),
                length_cat = checkRequired(fcatid, "Hãy chọn một chủ đề"),
                length_name = checkRequired(fname, "Hãy nhập Tên"),
                format_email = checkRegexp(femail, emailRegex, "Email không đúng định dạng."),
                length_content = checkRequired(fcontent, "Hãy nhập Nội dung");

            if (length_title && length_cat && length_name && format_email && length_content) {
//                alert(response_captcha);
                if (response_captcha == '' || response_captcha == undefined) {
                    updateTips('Hãy tick vào captcha.');
                    flag_check = false;
                } else {
                    flag_check = true;
                    return true;
                }
            }
            scroll_to_top_question();
            response_captcha = '';
            return flag_check;
        }
        form = $('#fquestion').off('submit').on("submit", function (event) {
//            event.preventDefault();
            $val = validate_form_question(this);
            return $val;
        });
    })
</script>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
