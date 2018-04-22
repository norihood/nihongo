var counter = 0;
var looper = setInterval(function(){ 
    counter++;
    var play_btn = $('.wp-playlist .mejs-playpause-button button');
    play_btn.click();
    if (counter >= 5 || play_btn.length > 0)
    {
        clearInterval(looper);
    }
}, 2000);

$(".tab_content").hide(); 
$("ul.mlo-tool li.tool:first").addClass("active").show();
$(".tab_content:first").show(); 
$("ul.mlo-tool li.tool").click(function(){
    $("ul.mlo-tool li.tool").removeClass("active");
    $(this).addClass("active"); 
    $(".tab_content").hide(); 
    var activeTab = $(this).find("a").attr("href"); 
    $(activeTab).show(); 
    return !1;
});
function iframe_embed(link) {
    var iframe = document.createElement('iframe');
    iframe.src = link;
    iframe.width = '400';
    iframe.height = '200';
    $('#blogsong').val(iframe.outerHTML);
}
// Gui bao loi cho quan tri
function senderror(term_id, type_term){
    var root_error = document.getElementById('root_error').value;
    var user = document.getElementById('user');
    var content  = strip_tags(document.getElementById('bodyerror').value);
    if (user.value == "") {
        alert('Hãy nhập tên của bạn');
        user.focus();
    } else if ( (content == "") && ( root_error == "" ) ) {
        alert('Hãy chọn nguyên nhân hoặc nhập nội dung.');
        document.getElementById('bodyerror').focus();
    } else {
        $.ajax({
            type: "post",
            dataType: "json",
            url: admin_ajax,
            data: {
                action: "error_music", //Tên action
                term_id: term_id,
                type_term: type_term,
                name: user.value,
                reason_select: root_error,
                reason_text: content
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
                    alert('Nội dung đã được gửi thành công.');
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
    }
    return;
}