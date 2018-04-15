<?php
/*
 Template Name: testsubmit
 */
 ?> 
<?php get_header(); ?>
<?php echo '<pre>';
print_r($_GET);
//die(); ?>
<div class="span-13 contentcolumn">
    <form action="" method="get">
        <input type="text" name="abc">
        <input name="submit" value="1" type="hidden">
        <input name="submit1" type="submit" value="Tìm kiếm">
<!--        <input type="hidden" name="post_type" value="<?=VAN_BAN_POST_TYPE?>" />-->
    </form>
</div>

<?php get_footer(); ?>
