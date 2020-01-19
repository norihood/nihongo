<?php

// $spreadsheet_url="https://docs.google.com/spreadsheet/pub?key=<>&single=true&gid=981105450&output=csv";
// $spreadsheet_url="https://docs.google.com/spreadsheets/d/1-HN9H4ISBxfCXWHpuoEHtU22JneCEYLOysR1LIf73iM/export?gid=981105450&format=csv";
$spreadsheet_url="https://docs.google.com/spreadsheets/d/e/2PACX-1vTFv45qK0OJ4V_ZTbx5DJFx10hrGxlVig-VJBd12qYXjLNNSX1MH20tpqsE6TB03A/pub?gid=100380599&single=true&output=csv";

if(!ini_set('default_socket_timeout', 15)) echo "<!-- unable to change socket timeout -->";

if (($handle = fopen($spreadsheet_url, "r")) !== FALSE) {
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $spreadsheet_data[] = $data;
    }
    fclose($handle);
}
else {
    die("Problem reading csv");
}
try {
    $data_kotoba = $id_kotoba = $nihongo_kotoba_obj = [];
    $i = 0;
    foreach ($spreadsheet_data as $value) {
        if ($value[1] == "") continue;
        $name = $i . '_' . $value[1];
        $id_kotoba[] = $name;
        $nihongo_kotoba_obj[$name] = [
            'mau' => $value[1],
            'cautruc' => $value[2],
            'ynghia' => $value[3],
            'giaithich' => $value[4],
            'vidu' => $value[5]
            // 'remember' => ($value[6] != '') ? true : false
        ];
        $i++;
    }
} catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}
// echo '<pre>';print_r($spreadsheet_url);die();
$res = array(
    'id' => $id_kotoba,
    'data' => $nihongo_kotoba_obj
);
echo json_encode($res);
die();