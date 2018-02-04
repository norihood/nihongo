<?php

// $handle = fopen('csv/test1.csv', 'r');
// $handle2 = fopen("test.csv", "a");
// // $data_csv_old = [];
// while ($data= fgetcsv($handle, 100, ","))

// {
// 	fputcsv($handle2, $data);
// 	list($name, $address) = $data;

// 	echo $name . ' ' . $address . '<br>';

// }

// fclose($handle);



// // var_dump($handle);die();

// // fputcsv($handle, $data_csv_old);

// fclose($handle2);


$html = '';
$handle3 = fopen('test.csv', 'r');
$i = 0;
while ($data= fgetcsv($handle3, 100, ","))

{
	list($name, $address) = $data;

	$html .= '<input type="checkbox" value="' . $i . '"><br>';
	$i++;
}

fclose($handle3);
$html .= '<button onclick="return submit();">submit</button>';
?>
<!DOCTYPE html>
<html>
<head>
	<title>test</title>
	<script type="text/javascript">
	function submit() {
		var checkedValue = null;
		var check_arr = [];
		var layer_checkbox = document.getElementById("layer_checkbox").getElementsByTagName('input');
		// var layer_checkbox = document.getElementById("layer_checkbox").querySelectorAll('[type="checkbox"]');
		// console.log(layer_checkbox);
		for(var i=0; layer_checkbox[i]; ++i){
			// console.log(layer_checkbox[i].type);
			if (layer_checkbox[i].type.toLowerCase() == "checkbox"){
	           	if(layer_checkbox[i].checked){
				    checkedValue = layer_checkbox[i].value;
				    check_arr.push(checkedValue);
				}
	        }
			
		}
		console.log(check_arr);
		var http = new XMLHttpRequest();
		var url = "get_data.php";
		var params = "checkbox_arr=" + JSON.stringify(check_arr);
		http.open("POST", url, true);

		//Send the proper header information along with the request
		http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		http.onreadystatechange = function() {//Call a function when the state changes.
		    if(http.readyState == 4 && http.status == 200) {
		        alert(http.responseText);
		        location.reload();
		    }
		}
		http.send(params);
	}
	</script>
</head>
<body>
<div id="layer_checkbox">
	<?=$html?>
</div>
</body>
</html>