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
                <h3>Chi tiết báo lỗi</h3>
                <p><b>Tên album / bài hát</b>: <?php 
                    if ($error['type_term'] == 'album') {
                        $term = get_term( $error['term_id']);
                        $title = $term->name;
                        $link = get_term_link( $term->term_id );
                    } else {
                        $post = get_post($error['term_id']);
                        
                        $title = $post->post_title;
                        $link = get_permalink( $error['term_id'] );
                    }
                    echo '<a target="_blank" href="' . $link . '">' . $title . '</a>';
                ?></p>
                <p><b>Tên người gửi</b>: <?=$error['name']?></p>
                <p><b>Nguyên nhân</b>: <?=$error['reason_select']?></p>
                <p><b>Nội dung</b>: <br> <?=nl2br($error['reason_text'])?></p>
                <p><b>Ngày gửi</b>: <?=date('d-m-Y', strtotime($error['created_date']))?></p>
            </div>
            <br>
        </div>
    </div>
</div>
