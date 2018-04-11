<?php
/*
 Template Name: print
 */
 ?> 
<?php $post = get_post($_GET['id']);
if ($post) {
	if ( 'publish' != get_post_status ( $_GET['id'] ) || $post->post_type != 'post' ) {
	    wp_redirect(home_url());
    	exit();
	}
} else {
	wp_redirect(home_url());
    exit();
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title><?=$post->post_title?> - <?=get_bloginfo('description')?></title>
	    <meta name="description" content="Print - Tin Tức - <?=get_post_meta($post->ID, 'description', true)?>">

		<meta http-equiv="content-language" content="vi">
		<meta name="language" content="vietnamese">
		<meta name="author" content="<?=get_bloginfo('description')?>">
		<meta name="copyright" content="<?=get_bloginfo('description')?>">
		<meta name="robots" content="index, archive, follow, noodp">
		<meta name="googlebot" content="index,archive,follow,noodp">
		<meta name="msnbot" content="all,index,follow">
        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
                text-align: center;
                color: #4D5764;
            }
            
            a, a:active, a:focus, a:visited {
                color: #4D5764;
                text-decoration: none;
            }
            
            h1 {
                font-size: 160%
            }
            
            h2 {
                font-size: 150%
            }
            
            a:hover {
                text-decoration: underline;
            }
            
            h1, h2, p {
                margin: 0;
                padding: 0;
            }
            
            #main {
                margin: 0 auto;
                text-align: left;
                width: 800px;
            }
            
            #header {
                height: 100%;
                line-height: 40px;
                border-bottom: 2px solid #DC0312;
            }
            
            #header h2 {
                float: left;
                display: inline;
            }
            
            #header p {
                float: right;
                display: inline;
            }
            
            #content #hometext {
                font-weight: bold;
                margin-bottom: 10px;
                text-align: justify;
            }
            
            #content #bodytext {
                text-align: justify;
            }
            
            #content ul.control {
                margin: 0;
                padding: 10px 0;
            }
            
            #content ul.control li {
                display: inline;
                float: left;
                list-style: none;
                font-size: 95%;
            }
            
            #content ul.control li a {
                padding: 0 2px;
                font-weight: 700;
    			color: #2315fd;
            }
            
            #content ul.control li a:hover {
                text-decoration: none;
                cursor: pointer;
                color: #f71818;
            }
            
            #content .time {
                color: #333;
            }
            
            #content #imghome {
                padding: 4px;
                margin: 0 auto;
            }
            
            #content #imghome p {
                font-weight: normal
            }
            
            #content .copyright {
                background: #66CCFF;
                padding: 4px;
                width: 100%;
            }
            
            #content #author {
                text-align: right;
            }
            
            #footer {
                margin-top: 10px;
                border-top: 2px solid #DC0312;
            }
            
            #footer #url {
                line-height: 20px;
                font-size: 100%;
                display: block;
                border-bottom: 2px solid #4D5764;
            }
            
            #footer .copyright {
                float: left;
                display: inline;
                padding: 5px 0;
            }
            
            #footer #contact {
                float: right;
                display: inline;
                padding: 5px 0;
            }
            
            #footer #contact a:hover {
                text-decoration: none;
                cursor: pointer;
            }
            
            .fl {
                float: left
            }
            
            .fr {
                float: right
            }
            
            .clear {
                clear: both;
            }
            
            .clearfix:after {
                content: ".";
                display: block;
                clear: both;
                visibility: hidden;
                line-height: 0;
                height: 0;
            }
            
            .clearfix {
                display: inline-block;
            }
            
            html[xmlns] .clearfix {
                display: block;
            }
            * html .clearfix {
                height: 1%;
            }
        </style>
    </head>
    <body>
        <div id="main">
            <div id="header" class="clearfix">
                <h2><?=get_bloginfo('description')?></h2>
                <p>
                    <a title="<?=get_bloginfo('description')?>" href="<?=home_url()?>"><?=home_url()?></a>
                </p>
            </div>
            <div class="clear">
            </div>
            <div id="content">
                <h1><?=$post->post_title?></h1>
                <ul class="control">
                    <li class="time">
                        <?=get_thu(date('l', strtotime($post->post_date)))?> - <?=date('d/m/Y H:i', strtotime($post->post_date))?>
                    </li>
                    <li>
                        |<a title="In ra" href="javascript:;" onclick="window.print()">In ra</a>
                    </li>
                    <li>
                        |<a title="Đóng cửa sổ này" href="javascript:;" onclick="window.close()">Đóng cửa sổ này</a>
                    </li>
                </ul>
                <div class="clear">
                </div>
                <div id="hometext">
                	<?php $src = wp_get_attachment_url( get_post_thumbnail_id($post->ID), 'thumbnail' );
                	if ($src) {
                		echo '<div id="imghome" class="fl">
	                        <img alt="' . (get_post_meta( get_post_thumbnail_id($post->ID), '_wp_attachment_image_alt', true) ?: $post->post_title) 
	                        . '" src="' . $src . '" width="120">
	                    </div>';
                	}
                	echo get_post_meta($post->ID, 'description', true);
                	?>                   
                </div>
                <div class="clear"></div>
                <div id="bodytext" class="clearfix">
                    <?php
                    $content = $post->post_content;
					$content = apply_filters('the_content', $content);
					$content = str_replace(']]>', ']]&gt;', $content);
					echo $content;
                    ?>
                </div>
                
            </div>
            <div id="footer">
                <div id="url">
                    <strong>URL của bản tin này: </strong>
                    <a href="<?=get_permalink($post->ID)?>" title="<?=$post->post_title?>"><?=get_permalink($post->ID)?></a>
                </div>
                <div class="clear">
                </div>
                <div class="copyright">
                    © <?=get_bloginfo()?>
                </div>
                <div id="contact">
                    <a href="<?=get_bloginfo('admin_email')?>"><?=get_bloginfo('admin_email')?></a>
                </div>
            </div>
        </div>
    

</body></html>
