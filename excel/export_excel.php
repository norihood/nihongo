<?php
ob_start();
$data = json_decode($_POST['data']);
// echo '<pre>';print_r($data);die();


include 'PHPExcel-1.8/Classes/PHPExcel.php';
include 'PHPExcel-1.8/Classes/PHPExcel/IOFactory.php';

// Create new PHPExcel object
$objPHPExcel = new PHPExcel();

foreach ($data as $key => $value) {
	
	$objPHPExcel->createSheet();


	// Create a first sheet, representing sales data
	$objPHPExcel->setActiveSheetIndex($key);

		$i = 1;
	foreach ($value as $key2 => $value2) {
		$objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $value2[0]);
		$objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $value2[1]);
		$objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $value2[2]);
		$objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $value2[3]);
		$objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $value2[4]);
		$objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $value2[5]);
		$objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $value2[6]);
		if (isset($value2[7])) {
			$objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $value2[7]);
		}
		$i++;
	}
	// Rename sheet
	$objPHPExcel->getActiveSheet()->setTitle('Sheet ' . ($key + 1));

	// // Create a new worksheet, after the default sheet
	// $objPHPExcel->createSheet();

	// // Add some data to the second sheet, resembling some different data types
	// $objPHPExcel->setActiveSheetIndex(1);
	// $objPHPExcel->getActiveSheet()->setCellValue('A1', 'More data');

	// // Rename 2nd sheet
	// $objPHPExcel->getActiveSheet()->setTitle('Second sheet');
}

// Redirect output to a client’s web browser (Excel5)
header('Content-Type: application/vnd.ms-excel');
header('Content-Disposition: attachment;filename="name_of_file.xls"');
header('Cache-Control: max-age=0');
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
// $objWriter->save('php://output');



$objWriter->save("php://output");
$xlsData = ob_get_contents();
ob_end_clean();

$response =  array(
        'op' => 'ok',
        'file' => "data:application/vnd.ms-excel;base64,".base64_encode($xlsData)
    );

die(json_encode($response));