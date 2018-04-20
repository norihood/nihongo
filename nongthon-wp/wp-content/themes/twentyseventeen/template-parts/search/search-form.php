<div class="sea-frame">
    <form action="<?=home_url()?>" name="form_search" method="get" id="form_search">
        <div class="title">
            Tìm và lấy những gì bạn muốn!
        </div>
        <div class="form">
            <dl class="clearfix" style="margin-bottom:5px">
                <dd class="fl" style="width:100px;text-align:left;">
                    <label>
                        Từ tìm kiếm:
                    </label>
                </dd>
                <dt class="fl" style="text-align:left;">
                    <input style="width:260px;" type="text" id="search_text" name="s" value="<?php echo (!empty($_GET['s']) ? $_GET['s'] : '')?>" maxlength="60">
                </dt>
            </dl>
            <dl class="clearfix" style="margin-bottom:5px">
                <dd class="fl" style="width:100px;text-align:left;">
                    &nbsp;
                </dd>
                <dt class="fl" style="text-align:left;">
                    <label style="font-weight: normal;">
                        <input name="sentence" id="search_logic_and" type="radio" value="1" <?php echo ((!empty($_GET['sentence']) && $_GET['sentence'] == 1) ? 'checked' : '')?>>Cả cụm từ 
                    </label>
                    &nbsp; 
                    <label style="font-weight: normal;">
                        <input name="sentence" id="search_logic_or" type="radio" value="" <?php echo ((empty($_GET['sentence']) || $_GET['sentence'] != 1) ? 'checked' : '')?>>Tối thiểu 1 từ
                    </label>
                </dt>
            </dl>            
            <dl class="clearfix">
                <dd class="fl" style="width:100px;text-align:left;">
                    <label>
                        Tìm kiếm tại:
                    </label>
                </dd>
                <dt class="fl" style="text-align:left;">
                    <select name="m" id="search_query_mod">
                        <option value="all">Tìm kiếm trên site</option>
                        <option value="he-thong-to-chuc" <?php echo ((!empty($_GET['m']) && $_GET['m'] == 'he-thong-to-chuc') ? 'selected' : '')?>>Hệ thống tổ chức</option>
                        <option value="gioi-thieu" <?php echo ((!empty($_GET['m']) && $_GET['m'] == 'gioi-thieu') ? 'selected' : '')?>>Giới thiệu</option>
                        <option value="tin-tuc" <?php echo ((!empty($_GET['m']) && $_GET['m'] == 'tin-tuc') ? 'selected' : '')?>>Tin Tức</option>
                        <option value="hoi-dap" <?php echo ((!empty($_GET['m']) && $_GET['m'] == 'hoi-dap') ? 'selected' : '')?>>Hỏi đáp</option>
                        <option value="van-ban" <?php echo ((!empty($_GET['m']) && $_GET['m'] == 'van-ban') ? 'selected' : '')?>>Văn bản nông thôn mới</option>
                    </select>
                    <input type="submit" id="search_submit" value="Tìm kiếm">&nbsp;&nbsp;
                </dt>
            </dl>
        </div>
    </form>
    <script type="text/javascript">
        $('#form_search').on('submit', function(){
            var search_text = $(this).find('#search_text').val();
            if (search_text.length < 1) {
                alert('Hãy nhập nội dung muốn tìm kiếm');
                return false;
            }
            return true;
        })
    </script>
</div>