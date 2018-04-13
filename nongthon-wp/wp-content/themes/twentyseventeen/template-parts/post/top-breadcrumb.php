<?php
/**
 * PhuongNLT: breacrumb top
 * Use for category page
*/
$arr_breadcrumb = array();
$category_current     = get_queried_object();
if ($category_current) {
    $arr_breadcrumb[] = array(
        'name' => $category_current->name,
        'url'  => get_category_link($category_current->term_id)
    );

    $parent = $category_current->parent;
    while ($parent != CATEGORY_NEWS_ID) {
        //load object for parent category
        $parent_obj = get_category($parent, false);
        if ($parent_obj) {
            $arr_breadcrumb[] = array(
                'name' => $parent_obj->name,
                'url'  => get_category_link($parent_obj->term_id)
            );
            $parent = $parent_obj->parent;
        }
        else {
            break;
        }
    }
}
$arr_breadcrumb = array_reverse($arr_breadcrumb);
?>

<h3 class="breakcolumn">
    <a title="TRANG CHỦ" href="<?=get_home_url()?>"><img src="<?= get_template_directory_uri() ?>/assets/images/home.png" alt="TRANG CHỦ"></a>
    <span class="breakcolumn">»</span>
    <?php foreach ($arr_breadcrumb as $key => $cat_breadcrumb) {
        if ($key != 0) {
            echo '<span class="breakcolumn">»</span>';
        }
        echo '<a href="' . $cat_breadcrumb['url'] . '" title="' . mb_strtoupper($cat_breadcrumb['name']) . '">' . mb_strtoupper($cat_breadcrumb['name']) . '</a>';
    } ?>
</h3>
<br><img alt="" src="<?= get_template_directory_uri() ?>/assets/images/bannerhcm.jpg" style="width: 540px; height: 71px; ">
