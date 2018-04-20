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
    <?php if (isset($advanced_search_flg) && $advanced_search_flg == true) {
        $display = 'block';
    } else {
        $display = 'none';
    } ?>
</script>
<form method="get" action="/van-ban-nong-thon-moi/">
    <div align="center" class="bdlaw">
        <strong>Tìm văn bản: </strong>
        <input name="text_search" id="q" type="text" value="<?php echo (isset($_GET['text_search'])) ? $_GET['text_search'] : '' ?>" maxlength="60" style="border: 1px solid #CCCCCC; width: 200px">
        <input name="submit1" type="submit" value="Tìm kiếm">
        <a href="javascript:" onclick="laws_swhidden( 'laws_search' ); return false;">Tìm kiếm nâng cao</a>
        <table id="laws_search" border="0" style="width:450px; display:<?=$display?>; margin-bottom: 0;">
            <tbody>
                <tr>
                    <td colspan="2" style="text-align: center;"> 
                        <label><em>Tìm chính xác cụm từ </em>
                        <input type="checkbox" name="fullq" value="1" <?php echo (isset($_GET['fullq']) && $_GET['fullq'] == 1) ? 'checked' : '' ?>>
                        </label>
                    </td>
                </tr>
                <tr><td style="text-align: left"><label>Trong: </label></td>
                    <td style="text-align: right">
                        <select name="text_option">
                            <option value="">Tất cả</option>
                            <option value="title" <?php echo (isset($_GET['text_option']) && $_GET['text_option'] == 'title') ? 'selected' : '' ?>>Số / ký hiệu</option>
                            <option value="excerpt" <?php echo (isset($_GET['text_option']) && $_GET['text_option'] == 'excerpt') ? 'selected' : '' ?>>Trích yếu</option>
                            <option value="signer" <?php echo (isset($_GET['text_option']) && $_GET['text_option'] == 'signer') ? 'selected' : '' ?>>Người ký</option>
                        </select>
                    </td>
                </tr>
                <?php
                $taxonomies=get_taxonomies(['object_type' => array(VAN_BAN_POST_TYPE)], 'objects', 'and');
                if ($taxonomies) {
                    foreach ($taxonomies  as $taxonomy ) {
                        echo '<tr><td style="text-align: left"><label>' . $taxonomy->label . ': </label></td>
                                <td style="text-align: right">
                                    <select name="field_' . $taxonomy->name . '">
                                        <option value="">Tất cả</option>';
                        $taxonomyName = $taxonomy->name;
                        $parent_terms = get_terms( $taxonomyName, array( 'parent' => 0, 'hide_empty' => false ) ); 
                        if ($parent_terms) {
                            foreach ($parent_terms as $key => $pterm) {
                                $selected = '';
                                if (isset($_GET['field_' . $taxonomy->name]) && $_GET['field_' . $taxonomy->name] == $pterm->term_id) {
                                    $selected = 'selected';
                                }
                                echo '<option value="' . $pterm->term_id . '" ' . $selected . '>' . $pterm->name . '</option>';
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
                    <td style="text-align: left"><label>Ngày ban hành: </label></td>
                    <td style="text-align: right">
                        Từ: 
                        <input id="ttime" name="start_date" style="width: 90px;" value="<?php echo (isset($_GET['start_date'])) ? $_GET['start_date'] : '' ?>" type="text">
                        <img src="<?=get_template_directory_uri()?>/assets/images/calendar.jpg" style="cursor: pointer; vertical-align: middle;" onclick="popCalendar.show(this, 'ttime' , 'dd/mm/yyyy' , true);" alt="">
                        &nbsp;&nbsp;Đến: 
                        <input id="dtime" name="end_date" style="width: 90px;" value="<?php echo (isset($_GET['end_date'])) ? $_GET['end_date'] : '' ?>" type="text">
                        <img src="<?=get_template_directory_uri()?>/assets/images/calendar.jpg" style="cursor: pointer; vertical-align: middle;" onclick="popCalendar.show(this, 'dtime' , 'dd/mm/yyyy' , true);" alt="">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</form>