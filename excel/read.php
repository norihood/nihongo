<?php
//  Include thư viện PHPExcel_IOFactory vào
include 'PHPExcel-1.8/Classes/PHPExcel/IOFactory.php';
 
$inputFileName = 'List.xlsx';
 
//  Tiến hành đọc file excel
try {
    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
    $objPHPExcel = $objReader->load($inputFileName);
} catch(Exception $e) {
    die('Lỗi không thể đọc file "'.pathinfo($inputFileName,PATHINFO_BASENAME).'": '.$e->getMessage());
}
 
//  Lấy thông tin cơ bản của file excel
 
// Lấy sheet hiện tại
$sheet = $objPHPExcel->getSheet(0); 
 
// Lấy tổng số dòng của file, trong trường hợp này là 6 dòng
$highestRow = $sheet->getHighestRow(); 
 
// Lấy tổng số cột của file, trong trường hợp này là 4 dòng
$highestColumn = $sheet->getHighestColumn();
 
// Khai báo mảng $rowData chứa dữ liệu
 
//  Thực hiện việc lặp qua từng dòng của file, để lấy thông tin
for ($row = 1; $row <= $highestRow; $row++){ 
    // Lấy dữ liệu từng dòng và đưa vào mảng $rowData
    $rowData[] = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE,FALSE);
}
 
//In dữ liệu của mảng
// echo "<pre>";
// print_r($rowData);
// echo "</pre>";
// 


// foreach ($rowData as $key => $value) {
// 	echo '<pre>';
// 	$url = $value[0][0];
	
// 	// create curl resource 
//   //       $ch = curl_init(); 

//   //       // set url 
//   //       curl_setopt($ch, CURLOPT_URL, $url); 

//   //       //return the transfer as a string 
//   //       curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 

//   //       // $output contains the output string 
//   //       $output = curl_exec($ch); 

//   //       // close curl resource to free up system resources 
//   //       curl_close($ch);
		
// 		// $pattern = '/^[0-9]+$/';
// 		// $subject = $output;
// 		// if (preg_match($pattern, $subject, $matches)){
// 		//     echo 'Đây là một dãy số';
// 		// }
// 		// echo '<pre>';
// 		// print_r($output);
// 		// die();
// }
?>
<!DOCTYPE html>
<html>
<head>
	<title>test</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
	var data_total = [];
	<?php
		foreach ($rowData as $key => $value) {
			$url = $value[0][0];
			echo 'get_data(\'' . $url . '\');';
			// if ($key == 1) {
			// 	break;
			// }
		}
	?>
	
	function get_data(url) {
		$.ajax({
			method: 'POST',
            // contentType: "application/json; charset=utf-8",
            url: 'get_tbl.php',
            data: { url: url },
            dataType: "json",
            async: false,
            success: function(res) {
            	var allText = res.data;
                // console.log(allText);
                var regex = /(<body[^>]*>(.|\r|\n|\t)*?<\/body>)/;
                var arr = regex.exec(allText);
                // console.log(arr);
                arr[1].replace(/(\n|\t)/, '');
                // console.log(arr[1]);
                var obj_html = $('<div>').html(arr[1]).contents();
                // console.log(obj_html);<div class="tableouter">
                var entry_content = obj_html.find('.tableouter tbody');
                var header_ary = [];
                var i = 0;
                entry_content.find('tr').each(function(index, e) {
                	if (i > 0) {
                		var header = $(e).find('td');
                	} else {
                		var header = $(e).find('th');
                	}
                    
	                var header_ary2 = [];
	                header.each(function(index2, b) {
	                	var text_head = $(b).text();
	                    header_ary2.push(text_head);
	                })
	                header_ary.push(header_ary2);
	                i++;
                });
                data_total.push(header_ary);
                console.log(header_ary);
            }
		});
        
    }
    console.log(data_total);
    var jsonString = JSON.stringify(data_total);
// $('#ajax').
    $.ajax({
		method: 'POST',
        // contentType: "application/json; charset=utf-8",
        url: 'export_excel.php',
        data: { data: jsonString },
        dataType: "json",
        // async: false,
        success: function(data) {
        	var $a = $("<a>");
		    $a.attr("href",data.file);
		    $("body").append($a);
		    $a.attr("download","file.xls");
		    $a[0].click();
		    $a.remove();
        }
	});
</script>

</body>
</html>