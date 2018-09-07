<?php
require_once '../core/dbconnect.php';
$con = new Connect();

$files = glob('data/*.html');
foreach ($files as $file) {
	$text = file_get_contents($file);
	// preg_match('/(<body[^>]*>(.|\r|\n|\t)*?<\/body>)/', htmlentities($text), $matches);
	preg_match('/(<body[^>]*>)/', htmlentities($text), $matches);
	echo '<pre>';print_r(htmlentities($text));die();
}

// $insert_sql = 'INSERT INTO kotoba_n3 (kotoba_id, nihongo, betonamugo, kanji, kanji_hanviet, bai) VALUES ';
// $query = $con->execute($insert_sql);
// $data = $query->fetchAll(\PDO::FETCH_ASSOC);