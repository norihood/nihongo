<?php
/*
 Template Name: contact
 */
 ?> 
<?php
get_header(); ?>
<div class="span-13 contentcolumn">
    <?php
    get_template_part('template-parts/post/contact', 'breadcrumb');?>
    <?php
    if ('POST' == $_SERVER['REQUEST_METHOD'] && !empty($_POST['btsend'])) {
        global $wpdb;
//        $wpdb->escape();
        $wpdb->insert('wp_p_contact', 
            array(
                'title' => $_POST['ftitle'],
                'content' => $_POST['fcontent'],
                'name' => $_POST['fname'],
                'email' => $_POST['femail'],
                'phone' => $_POST['fphone'],
                'department' => $_POST['fpart'],
                'created_date' => date('Y-m-d H:i:s'),
                'updated_date' => date('Y-m-d H:i:s')
            ),
            array(
                '%s',
                '%s',
                '%s',
                '%s',
                '%s',
                '%s',
                '%s',
                '%s'
            ) 
        );
        echo 'Xin cảm ơn quý vị đã quan tâm! chúng tôi sẽ trả lời thư của Quý vị trong thời gian sớm nhất.';
    } else {
    ?>
    <script type="text/javascript">
        var response_captcha = '';
        function recaptchaCallback() {
            response_captcha = grecaptcha.getResponse();
        };
    </script>
    <div class="contact">
        <div class="title">
            Quý vị có thể gửi thư tới chúng tôi bằng cách hoàn tất biểu mẫu dưới đây. Để chúng tôi có thể trả lời thư của Quý vị, xin vui lòng khai báo đầy đủ.
        </div>
        <p class="validateTips"></p>
        <form id="fcontact" method="post" action="">
            <div class="content clearfix">
                <div class="ftitle">
                    <label for="ftitle">
                        Tiêu đề:
                    </label>
                    <input type="text" maxlength="255" value="" id="ftitle" name="ftitle" class="txtInput">
                </div>

                <div class="fname">
                    <label for="fname">
                        Họ và tên:
                    </label>
                    <input type="text" maxlength="100" value="" id="fname" name="fname" class="txtInput">
                </div>
                <div class="femail">
                    <label for="femail">
                        Địa chỉ email:
                    </label>
                    <input type="text" maxlength="60" value="" id="femail" name="femail" class="txtInput">
                </div>

                <div class="fphone">
                    <label for="fphone">
                        Điện thoại:
                    </label>
                    <input type="text" maxlength="60" value="" id="fphone" name="fphone" class="txtInput">
                </div>
                <div>
                    <label for="fpart">
                        Gửi đến bộ phận:
                    </label>
                    <select class="sl2" id="fpart" name="fpart">
                        <?php 
                        $arr_cat = P_Contact_Plugin::$categories_dept;
                        foreach ($arr_cat as $key => $value) {
                            echo '<option value="' . $key . '">' . $value . '</option>';
                        }
                        ?>
                    </select>
                </div>
                <div>
                    <label for="fcontent">
                        Nội dung:
                    </label>
                    <textarea cols="8" rows="8" id="fcontent" name="fcontent" style="overflow: auto;" class="txttextArea"></textarea>
                </div>
                <div class="capcha1">
                    <div class="g-recaptcha" data-sitekey="6LffzkkUAAAAAOSB3XMwNGhMieqhNGP7uNv0MhAF" data-callback="recaptchaCallback"></div>
                </div>
                <div style="clear:both"></div>
                <div style=" padding-top:5px;">
                    <input type="reset" value="Xóa trắng" class="bt1">&nbsp;&nbsp;<input type="submit" value="Gửi thông tin" id="btsend" name="btsend" class="bt1">
                </div>
            </div>
        </form>

    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            var form,
                emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
                ftitle = $('#ftitle'),
                fpart = $("#fpart"),
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

            function scroll_to_top_contact() {
                $('html, body').animate({
                    scrollTop: $(".contentcolumn").offset().top
                }, 'fast');
            }
            function validate_form_contact() {
                var flag_check = false;
                grecaptcha.reset();
                resetTipsAndForm();

                var length_title = checkRequired(ftitle, "Hãy nhập Tiêu đề"),
                    length_cat = checkRequired(fpart, "Hãy chọn bộ phận để gửi"),
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
                scroll_to_top_contact();
                response_captcha = '';
                return flag_check;
            }
            form = $('#fcontact').off('submit').on("submit", function (event) {
                $val = validate_form_contact(this);
                return $val;
            });
        })
    </script>
    <?php } ?>
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer(); ?>