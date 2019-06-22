<?php
session_start();
$email=$_POST['Email'];
$password=$_POST['Password'];

$host="localhost";
$user="root";
$pass="";
$db="pgd";
$con=mysqli_connect($host,$user,$pass,$db);

$str="SELECT * FROM admin_user Where user_email='".$email."' AND user_password='".$password."'";

$result=mysqli_query($con,$str);

$isValidUser=false;
while($row=mysqli_fetch_array($result)){
		if($row['user_email']===$email){
		$isValidUser=true;
	$_SESSION['userEmail'] = $row['user_email'];
	$_SESSION['userId'] = $row['user_id'];
	$_SESSION['userName'] = $row['user_name'];
	$_SESSION['userPhone'] = $row['user_phone'];
	$_SESSION['userType'] = $row['user_type'];
	$_SESSION['userDept'] = $row['user_dept'];
	$_SESSION['lastLogin'] = $row['last_login_date'];
	}
}
if($isValidUser===true){
	/*$strUpdt="UPDATE admin_user SET last_login_date='".$date("Y-m-d H:i:s")."' WHERE user_email='".$email."'";
	$resultUpdat=mysqli_query($con,$strUpdt);*/
	header("Location: dashboard.php");
}else{
	echo '<META HTTP-EQUIV=REFRESH CONTENT="0; index.php?login=failed">';
}
?>