<?php
/*
 Template Name: albums
 */
 ?> 
<?php
get_header(); ?>
<style>
    #albums {
        border: #E1E1E1 1px solid;
        text-align: center;
    }
    .view_albums {
        padding: 5px;
        background: #F8F8F8;
        text-align: left;
        font-weight: bold;
        margin-bottom: 20px;
    }
</style>
<div class="span-13 contentcolumn">

    <?php
    get_template_part('template-parts/post/albums', 'breadcrumb');?>
    <div id="albums">
        <?php
        while ( have_posts() ) { the_post();
            setPostViews(get_the_ID());
        ?>
            <div class="view_albums">
                Khu dân cư kiểu mẫu - Vườn mẫu 
                <span style="font-size:11px; color:#999; font-weight:normal"><?php
                echo (new Envira_Gallery_Lite())->get_gallery_image_count(get_post_meta(get_the_ID(), 'album_id', true) ?: 224);
                ?> photos | <?=getPostViews(get_the_ID())?> view</span><br>
            </div>
        <?php 
            the_content();
        }
        ?>
    </div>
    
</div>
<!-- right sidebar -->
<?php 
get_template_part('template-parts/sidebar/sidebar', 'right'); ?>
<?php get_footer();
