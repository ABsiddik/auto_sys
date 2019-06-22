<?php
session_start();
$email=$_POST['Email'];
$password=$_POST['Password'];

include ('config/db_connection.php');

$str="SELECT * FROM tbl_user Where user_email='".$email."' AND user_password='".$password."'";

$result=mysqli_query($con,$str);

$isValidUser=false;
while($row=mysqli_fetch_array($result)){
		if($row['user_email']===$email){
		$isValidUser=true;
	$_SESSION['userEmail'] = $row['user_email'];
	$_SESSION['userId'] = $row['user_id'];
	$_SESSION['userName'] = $row['user_name'];
	$_SESSION['userPhone'] = $row['user_phone'];
	$_SESSION['lastLogin'] = $row['last_login_date'];
	}
}
if($isValidUser===true){
	header("Location: dashboard.php");
}else{
	echo '<META HTTP-EQUIV=REFRESH CONTENT="0; index.php?login=failed">';
}
?>