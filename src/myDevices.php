<?php include "../template/topbar.php";
include ('config/db_connection.php');
$usertId=$_SESSION['userId'];
$queryUser="SELECT * FROM tbl_user_profile WHERE userId='$usertId';";
$userResult=mysqli_query($conn, $queryUser);
if(!$userResult){
	die("Could not connect: " . mysqli_error($conn));
	exit;
}
$profileId=0;
$firstName="";
$lastName="";
$address="";
$nid="";
while($row=mysqli_fetch_array($userResult)) {
	$profileId=$row['id'];
	$firstName=$row['firstname'];
	$lastName=$row['lastname'];
	$address=$row['address'];
	$nid=$row['nid_number'];
}
?>

<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        My Device List
                    </header>
                    <div class="panel-body">
                        <div class="position-center">
                            <form method="POST" action="">
                                <input type="hidden" name="profileId" id="profileId"
                                    value='<?php echo $profileId; ?>' />
                                <div class="form-group">
                                    <label>Device ID </label>
                                    <div class="input-group m-bot15">
                                        <input type="text" class="form-control" />
                                        <span class="input-group-btn">
                                            <button class="btn btn-success" type="button">Search </button>
                                        </span>
                                    </div>
                                </div>

                            </form>
                            <?php

	if(!empty($_GET['status'])){
				 $message=$_GET['status'];
				 if($message==='success'){
					 echo "<script type='text/javascript'>alert('Profile Update successfully done!')</script>";
				 }else{
					 echo "<script type='text/javascript'>alert('Failed!')</script>";
				 }
				 }
   
  ?>

                        </div>

                    </div>
                </section>

            </div>
        </div>
    </section>
    <!-- footer -->
    <?php include "../template/footer.php";   ?>
    <!-- / footer -->
</section>

</section>
</body>

</html>