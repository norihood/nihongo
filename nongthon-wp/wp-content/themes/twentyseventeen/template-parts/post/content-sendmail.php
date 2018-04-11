<style>
    #dialog-send-mail label, #dialog-send-mail input {
        display:block;
    }
    #dialog-send-mail input.text, #dialog-send-mail textarea {
        margin-bottom:12px;
        width:95%;
        padding: .4em;
    }
    #dialog-send-mail .validateTips {
        border: 1px solid transparent;
        padding: 0.3em;
    }
</style>
<script type="text/javascript">
    var response_captcha;
    function recaptchaCallback() {
        response_captcha = grecaptcha.getResponse();
    };
</script>
<div id="dialog-send-mail" title="Gửi bài viết qua email">
    <p class="validateTips"></p>

    <form>
        <fieldset>
            <label for="name">Tên của bạn <span class="error">*</span></label>
            <input type="text" name="name" id="name" value="" class="text ui-widget-content ui-corner-all">
            <label for="email">E-mail người nhận <span class="error">*</span></label>
            <input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all">
            <label for="content_mail">Nội dung</label>
            <textarea name="content_mail" rows="4" id="content_mail" class="text ui-widget-content ui-corner-all"></textarea>
            <input type="hidden" name="post_id" value="<?= get_the_ID() ?>" />
            <br>
            <div class="g-recaptcha" data-sitekey="6LffzkkUAAAAAOSB3XMwNGhMieqhNGP7uNv0MhAF" data-callback="recaptchaCallback"></div>
            <!-- Allow form submission with keyboard without duplicating the dialog button -->
            <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
        </fieldset>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var dialog, form,
            emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
            name = $("#dialog-send-mail #name"),
            email = $("#dialog-send-mail #email"),
            allFields = $([]).add(name).add(email),
            tips = $("#dialog-send-mail .validateTips");

        function updateTips(t) {
            tips.append('<p class="error">' + t + '</p>')
                .addClass("ui-state-highlight");
            setTimeout(function () {
                tips.removeClass("ui-state-highlight", 1500);
            }, 500);
        }

        function resetTips() {
            tips.html('');
        }

        function checkRequired(o, n) {
            if (o.val().length < 1) {
                o.addClass("ui-state-error");
                updateTips("Hãy nhập nội dung của " + n);
                return false;
            } else {
                return true;
            }
        }

        function checkRegexp(o, regexp, n) {
            if (!(regexp.test(o.val()))) {
                o.addClass("ui-state-error");
                updateTips(n);
                return false;
            } else {
                return true;
            }
        }

        function addUser() {
            var flag_check = true;
            grecaptcha.reset();
            resetTips();
            allFields.removeClass("ui-state-error");

            var length_name = checkRequired(name, "Tên"),
                length_email = checkRequired(email, "Email"),
                format_email =  false;
            if (length_email) {
                format_email = checkRegexp(email, emailRegex, "Email không đúng định dạng.");
            }

            if (length_name && length_email && format_email) {
                if (response_captcha == '') {
                    updateTips('Hãy tick vào captcha.');
                    flag_check = false;
                } else {
                    flag_check = true;
                    $.ajax({
                        type: "post",
                        dataType: "json",
                        url: '<?php echo admin_url('admin-ajax.php'); ?>',
                        data: {
                            action: "send_post_to_mail", //Tên action
                            post_id: $('#dialog-send-mail input[name="post_id"]').val(),
                            name: name.val(),
                            email: email.val(),
                            content_mail: $('#content_mail').val(),
                        },
                        context: this,
                        beforeSend: function () {
                            //Làm gì đó trước khi gửi dữ liệu vào xử lý
                            p_loader(true);
                        },
                        success: function (response) {
                            p_loader(false);
                            //Làm gì đó khi dữ liệu đã được xử lý
                            if (response.success) {
                                updateTips('Nội dung đã được gửi thành công.');
                            } else {
                                alert('Đã có lỗi xảy ra');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            p_loader(false);
                            alert('Có lỗi xảy ra.');
                            //Làm gì đó khi có lỗi xảy ra
                            console.log('The following error occured: ' + textStatus, errorThrown);
                        }
                    })
//                    dialog.dialog( "close" );
                }
            }
            response_captcha = '';
            return flag_check;
        }
        dialog = $("#dialog-send-mail").dialog({
            autoOpen: false,
            height: 500,
            width: 350,
            modal: true,
            buttons: {
                "Gửi": addUser
            },
            close: function () {
                form[ 0 ].reset();
                grecaptcha.reset();
                response_captcha = '';
                resetTips();
                allFields.removeClass("ui-state-error");
            }
        });
        form = dialog.find("form").on("submit", function (event) {
            event.preventDefault();
            addUser();
        });

        $(".sendmail").on("click", function () {
            dialog.dialog("open");
        });
    })
</script>