<?php

// $spreadsheet_url="https://docs.google.com/spreadsheet/pub?key=<>&single=true&gid=981105450&output=csv";
$spreadsheet_url="https://docs.google.com/spreadsheets/d/1-HN9H4ISBxfCXWHpuoEHtU22JneCEYLOysR1LIf73iM/export?gid=981105450&format=csv";

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
        $name = $i . '_' . $value[1];
        $id_kotoba[] = $name;
        $nihongo_kotoba_obj[$name] = [
            'nihongo' => $value[2],
            'kanji' => $value[1],
            'han_viet' => $value[3],
            'betonamugo' => $value[4],
            'tatoeba' => '',
            'remember' => ($value[6] != '') ? true : false
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