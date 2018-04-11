<style>
    #dialog-print {
        margin: 0 auto;
        text-align: left;
    }

    .header_print {
        line-height: 40px;
        border-bottom: 2px solid #DC0312;
    }

    .header_print h2 {
        text-align: left;
        font-size: 22px;
    }
    .header_print p {
        text-align: right;
    }
    .content_print .hometext {
        font-weight: bold;
        margin-bottom: 10px;
        text-align: justify;
    }
    .content_print .title_post_print {
        font-size: 20px;
    }
    .content_print .bodytext_print {
        text-align: justify;
    }

    .content_print ul.control {
        margin: 0;
        padding: 10px 0;
    }

    .content_print ul.control li {
        display: inline;
        float: left;
        list-style: none;
        font-size: 95%;
    }

    .content_print ul.control li a {
        padding: 0 2px;
    }

    .content_print ul.control li a:hover {
        text-decoration: none;
        cursor: pointer;
    }

    .content_print .time {
        color: #333;
    }

    .content_print .imghome {
        padding: 4px;
        margin: 0 auto;
        float: left;
    }

    .content_print .imghome p {
        font-weight: normal
    }

    .footer_print {
        margin-top: 10px;
        border-top: 2px solid #DC0312;
    }

    .footer_print .footer_print_url {
        line-height: 20px;
        font-size: 100%;
        display: block;
        border-bottom: 2px solid #4D5764;
    }

    .footer_print .copyright {
        float: left;
        display: inline;
        padding: 5px 0;
    }

    .footer_print .contact {
        float: right;
        display: inline;
        padding: 5px 0;
    }

    #footer_print #contact a:hover {
        text-decoration: none;
        cursor: pointer;
    }
</style>
<div id="dialog-print" title="In bài viết">
    <div class="clearfix header_print">
        <h2>Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh</h2>
        <p>
            <a title="Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh" href="http://nongthonmoihatinh.vn/">http://nongthonmoihatinh.vn</a>
        </p>
    </div>
    <div class="clear"></div>
    <div class="content_print">
        <h1 class="title_post_print">Chuyên gia Nhật hiến kế để nông dân tăng thu nhập</h1>
        <p class="time">
            Thứ hai - 09/04/2018  14:40
        </p>
        <div class="hometext">
            <div class="imghome">
                <img alt="Chuyên gia Nhật hiến kế để nông dân tăng thu nhập" src="<?= get_template_directory_uri() ?>/assets/images/bna_image_2232833_20320185227481_642018.jpg" width="120">
            </div>
            Thu nhập từ nông nghiệp có thể cao gấp 2,4 lần lương của nhân viên văn phòng, ông Takebe Tsutomu, cố vấn đặc biệt của Liên minh nghị sĩ hữu nghị Nhật - Việt trao đổi về việc nâng cao đời sống của nông dân...
        </div>
        <div class="clear"></div>
        <div class="bodytext_print" class="clearfix">Body</div>
    </div>
    <div class="footer_print">
        <div class="footer_print_url">
            <strong>URL của bản tin này: </strong><a href="http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Chuyen-gia-Nhat-hien-ke-de-nong-dan-tang-thu-nhap-77394/" title="Chuyên gia Nhật hiến kế để nông dân tăng thu nhập">http://nongthonmoihatinh.vn/index.php/vi/news/Nhieu-nguoi-cung-quan-tam/Chuyen-gia-Nhat-hien-ke-de-nong-dan-tang-thu-nhap-77394/</a>

        </div>
        <div class="clear">
        </div>
        <div class="copyright">
            © Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh
        </div>
        <div class="contact">
            <a href="mailto:hoangph2805@yahoo.com">hoangph2805@yahoo.com</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        dialog_print = $("#dialog-print").dialog({
            autoOpen: false,
            height: 500,
            width: 800,
            modal: true,
            buttons: [
                {
                    text: "In ra",
                    click: function() {
                        alert('IN');
                    }
                }
            ],
            close: function () {

            }
        });

        $(".post_print").on("click", function () {
            dialog_print.dialog("open");
        });
    })
</script>