<link rel="stylesheet" href="<?=get_template_directory_uri()?>/assets/css/popcalendar.css"/>
<script type="text/javascript" src="<?=get_template_directory_uri()?>/assets/js/popcalendar.js"></script>
<script language="javascript" type="text/javascript">
    function laws_swhidden(divname) {
        var a = document.getElementById(divname);
        if (a.style.display == 'none') {
            a.style.display = 'block';
        } else {
            a.style.display = 'none';
        }
    }
</script>
<form method="post" action="">
    <div align="center" class="bdlaw">
        <strong>Tìm văn bản: </strong><input name="text_search" id="q" type="text" value=" " maxlength="60" style="border: 1px solid #CCCCCC; width: 200px">
        <input name="submit" value="1" type="hidden">
        <input name="submit1" type="submit" value="Tìm kiếm">
        <input type="hidden" name="post_type" value="<?=VAN_BAN_POST_TYPE?>" />
        <a href="javascript:" onclick="laws_swhidden( 'laws_search' ); return false;">Tìm kiếm nâng cao</a>
        <table id="laws_search" border="0" style="width:420px; display:none; margin-bottom: 0;">
            <tbody><tr>
                    <td colspan="2" style="text-align: center;"> <strong><em>Tìm chính xác cụm từ </em></strong><input type="checkbox" name="fullq" value="1"></td>
                </tr>
                <tr><td style="text-align: left">Trong: </td>
                    <td style="text-align: right">
                        <select name="sein">
                            <option value="0" selected="selected">Tất cả</option>
                            <option value="title">Số / ký hiệu</option>
                            <option value="excerpt">Trích yếu</option>
                            <option value="signer">Người ký</option>
                        </select>
                    </td>
                </tr>
                <?php
                $args=array(
                    'object_type' => array(VAN_BAN_POST_TYPE) 
                ); 

                $output = 'objects'; // or objects
                $operator = 'and'; // 'and' or 'or'
                $taxonomies=get_taxonomies($args,$output,$operator);
                if ($taxonomies) {
                    foreach ($taxonomies  as $taxonomy ) {
                        echo '<tr><td style="text-align: left">' . $taxonomy->label . ': </td>
                                <td style="text-align: right">
                                    <select name="' . $taxonomy->name . '">
                                        <option value="0">Tất cả</option>';
                        $taxonomyName = $taxonomy->name;
                        $parent_terms = get_terms( $taxonomyName, array( 'parent' => 0, 'hide_empty' => false ) ); 
                        if ($parent_terms) {
                            foreach ($parent_terms as $key => $pterm) {
                                echo '<option value="' . $pterm->term_id . '">' . $pterm->name . '</option>';
                            }
                        }
                        echo '</select>
                                </td>  
                            </tr>';
                    }
                }
                ?>
                <tr>
                </tr><tr>
                    <td style="text-align: left">Ngày ban hành: </td>
                    <td style="text-align: right">
                        Từ: 
                        <input id="ttime" name="start_date" style="width: 70px;" value="" type="text">
                        <img src="<?=get_template_directory_uri()?>/assets/images/calendar.jpg" style="cursor: pointer; vertical-align: middle;" onclick="popCalendar.show(this, 'ttime' , 'dd/mm/yyyy' , true);" alt="">
                        &nbsp;&nbsp;Đến: 
                        <input id="dtime" name="end_date" style="width: 70px;" value="" type="text">
                        <img src="<?=get_template_directory_uri()?>/assets/images/calendar.jpg" style="cursor: pointer; vertical-align: middle;" onclick="popCalendar.show(this, 'dtime' , 'dd/mm/yyyy' , true);" alt="">
                    </td>
                </tr>
            </tbody></table>

    </div>
</form>

