<?php
/*
 Template Name: download-music
 */
 ?> 
<?php
if (isset($_GET['post_id']) && !empty($_GET['post_id'])) {
    $post_id = $_GET['post_id'];
    $file = get_field('file_music', $post_id);
    if ($file) {
        $file_url = $file['url'];
        header('Content-Description: File Transfer');
        header('Content-Type: audio/mpeg');
        header('Content-Disposition: attachment; filename='.basename($file_url));
        header('Content-Transfer-Encoding: binary');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        readfile($file_url);
        exit;
    }
}
echo 'Có lỗi xảy ra.';
exit();

?>
