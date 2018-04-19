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
                    <input class="intxt" id="search_query" name="s" value="" maxlength="60">
                </dt>
            </dl>
            <dl class="clearfix" style="margin-bottom:5px">
                <dd class="fl" style="width:100px;text-align:left;">
                    &nbsp;
                </dd>
                <dt class="fl" style="text-align:left;">
                    <input name="sentence" id="search_logic_and" type="radio" value="1">Cả cụm từ &nbsp; 
                    <input name="sentence" id="search_logic_or" type="radio" checked="checked" value="">Tối thiểu 1 từ
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
                        <option value="he-thong-to-chuc">Hệ thống tổ chức</option>
                        <option value="gioi-thieu">Giới thiệu</option>
                        <option value="tin-tuc">Tin Tức</option>
                        <option value="hoi-dap">Hỏi đáp</option>
                        <option value="van-ban">Văn bản nông thôn mới</option>
                    </select>
                    <input type="submit" id="search_submit" value="Tìm kiếm">&nbsp;&nbsp;
                    <a href="advSearch" class="advSearch">Nâng cao</a>
                </dt>
            </dl>
        </div>
    </form>

</div>