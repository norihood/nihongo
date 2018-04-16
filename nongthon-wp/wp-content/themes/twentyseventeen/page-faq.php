<?php
/*
 Template Name: faq
 */
 ?> 
<?php
get_header(); ?>
<style>

</style>
<div class="span-13 contentcolumn">

    <?php
    get_template_part('template-parts/post/faq', 'breadcrumb');?>
    <div id="faq">
        <?php
        while ( have_posts() ) { the_post(); ?>
        <div class="faq-header" style="display: inline-block;">
            <h4>HỎI - ĐÁP</h4>
        </div>
        <div style="float: right">
            <a href="/cau-hoi/">Bấm vào đây để đặt câu hỏi <img src="<?= get_template_directory_uri() ?>/assets/images/question.jpg" widht="100" style="cursor: pointer; vertical-align: middle;" onclick="" alt="" height="40"></a>
        </div>
        <p>
            Tại đây bạn có thể tham khảo các câu trả lời cho những câu hỏi được nhiều người quan tâm nhất. 
        </p>
        <ul class="catlist box-border-shadow content-box">
            <?php
            $term_list = get_terms( PHAN_LOAI, array( 'parent' => 0, 'hide_empty' => false ) );
            if ($term_list) {
                foreach ($term_list as $key => $pterm) {
                    echo '<li>
                        <h3 class="cat"><a href="' . get_term_link( $pterm ) . '"> ' . $pterm->name . ' </a></h3>
                    </li>';
                }
            }
            ?>
        </ul>
        <?php 
        }
        ?>
    </div>
    
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
