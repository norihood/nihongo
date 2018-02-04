<?php
// var_dump(json_decode($_POST['checkbox_arr']));
$handle = fopen("test.csv", "r");
$temp_csv = fopen("temp_csv.csv", "w");

$i = 0;
// $data_csv_old = [];
while ($data= fgetcsv($handle, 100, ","))
{
	if (in_array($i, json_decode($_POST['checkbox_arr']))) {
		$i++;
		continue;
	}
	fputcsv($temp_csv, $data);
	$i++;
}

fclose($handle);
fclose($temp_csv);

rename('temp_csv.csv','test.csv');
echo 'OK';