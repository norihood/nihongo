<?php
/*
 Template Name: testsubmit
 */
 ?> 
<?php
$file = 'http://nongthon-wp.local/wp-content/uploads/2018/04/Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3';
header('Content-Description: File Transfer');
header('Content-Type: audio/mpeg');
header('Content-Disposition: attachment; filename='.basename($file));
header('Content-Transfer-Encoding: binary');
header('Expires: 0');
header('Cache-Control: must-revalidate');
header('Pragma: public');
readfile($file);
exit;
?>
