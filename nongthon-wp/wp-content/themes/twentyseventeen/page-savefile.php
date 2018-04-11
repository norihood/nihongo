<?php
/*
 Template Name: savefile
 */
 ?>
 
 <?php //get_header(); ?>
 
<?php 
// $post = get_post($_GET['id']);
// if ($post) {
// 	if ( 'publish' != get_post_status ( $_GET['id'] ) || $post->post_type != 'post' ) {
// 	    wp_redirect(home_url());
//     	exit();
// 	}
// } else {
// 	wp_redirect(home_url());
//     exit();
// }
// ob_start();
$html = file_get_contents(get_permalink( get_page_by_path( 'print' ) ) . '?id=' . $_GET['id']);
// echo $html;
// ob_end_clean();
header('Content-Description: File Transfer');
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="' . get_post_field( 'post_name', $_GET['id'] ) . '.html"');
header('Expires: 0');
header('Cache-Control: must-revalidate');
header('Pragma: public');
header('Content-Length: ' . strlen($html));
echo $html;
 ?>

 
<?php //get_footer(); ?>