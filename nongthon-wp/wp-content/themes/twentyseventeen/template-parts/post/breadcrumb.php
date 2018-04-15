<?php
$slug_page = isset($slug_page) ? $slug_page : VAN_BAN_PAGE_SLUG;
$page  = get_page_by_path($slug_page);
?>
<h3 class="breakcolumn">
    <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
    <span class="breakcolumn">»</span>
        <a href="<?=get_permalink($page->ID)?>" title="<?=mb_strtoupper($page->post_title)?>"><?=mb_strtoupper($page->post_title)?></a>
</h3>
<br>
<?php if (isset($img_top)) {
    echo $img_top;
} ?>