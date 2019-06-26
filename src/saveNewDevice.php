<?php
$deviceId=$_POST['deviceId'];
$deviceType=$_POST['deviceType'];
$devicePorts=2;

include ('config/db_connection.php');

$inserData="INSERT INTO tbl_device_list (device_id, device_type, device_ports) VALUES ('$deviceId', '$deviceType', '$devicePorts');";
$result=mysqli_query($conn,$inserData);

if(!$result){
	die("Could not connect: " . mysqli_error($conn));
	exit;
}
if($result===true){
    echo '<META HTTP-EQUIV=REFRESH CONTENT="0; newDevice.php?status=success">';
    }else{
        echo '<META HTTP-EQUIV=REFRESH CONTENT="0; newDevice.php?status=failed">';
    }
    mysqli_close($conn);
?>