<?php
$page_laws  = get_page_by_path(VAN_BAN_PAGE_SLUG);
?>
<h3 class="breakcolumn">
    <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
    <span class="breakcolumn">»</span>
        <a href="<?=get_permalink($page_laws->ID)?>" title="<?=mb_strtoupper($page_laws->post_title)?>"><?=mb_strtoupper($page_laws->post_title)?></a>
</h3>
<br><img alt="" src="<?= get_template_directory_uri() ?>/assets/images/vanban_ntm.png" style="width: 540px; height: 71px; ">