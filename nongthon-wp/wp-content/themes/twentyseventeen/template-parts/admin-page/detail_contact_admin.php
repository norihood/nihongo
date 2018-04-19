<?php
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="wrap">
    <div id="welcome-panel" class="welcome-panel">
        <div class="welcome-panel-content">
            <div class="welcome-panel-column-container">
                <h3>Chi tiết liên lạc</h3>
                <p><b>Tiêu đề</b>: <?=$contact['title']?></p>
                <p><b>Nội dung</b>: <br> <?=nl2br($contact['content'])?></p>
                <p><b>Tên người gửi</b>: <?=$contact['name']?></p>
                <p><b>Email</b>: <?=$contact['email']?></p>
                <p><b>Điện thoại</b>: <?=$contact['phone']?></p>
                <p><b>Bộ phận liên lạc</b>: <?php echo self::$categories_dept[$contact['department']] ?></p>
                <p><b>Ngày gửi</b>: <?=date('d-m-Y', strtotime($contact['created_date']))?></p>
                <a href="mailto:<?=$contact['email']?>"><button type="button" class="button-primary action">Hồi đáp</button></a>
            </div>
            <br>
        </div>
    </div>
</div>
