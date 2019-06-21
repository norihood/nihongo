<?php
$url = $_POST['url'];
$ch = curl_init(); 
// echo '<pre>';print_r($url);die();
// set url 
curl_setopt($ch, CURLOPT_URL, $url); 

//return the transfer as a string 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 

// $output contains the output string 
$output = curl_exec($ch); 

// close curl resource to free up system resources 
curl_close($ch);

// $pattern = '/^[0-9]+$/';
// $subject = $output;
// if (preg_match($pattern, $subject, $matches)){
//     echo 'Đây là một dãy số';
// }
$res = array(
    'data' => $output,
    'url' => $url
);
echo json_encode($res);
die();
// echo '<pre>';
// print_r($output);
// die();