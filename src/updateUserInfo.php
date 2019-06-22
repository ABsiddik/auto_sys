<?php include "../template/topbar.php";?>

<!--main content start-->
 <section id="main-content">
	 <section class="wrapper">
	 <div class="row">
             <div class="col-lg-12">
			 <section class="panel">
                         <header class="panel-heading">
							Update Your Info
                         </header>
                         <div class="panel-body">
                             <div class="position-center">
                                 <form method="POST" action="">
								
								 <div class="form-group">
                                     <label for="firstName">Name </label>
                                     <input type="text" class="form-control" name="userName" id="userName" placeholder="User Name" 
									 required/>
                                 </div>
								
                                 <div class="form-group">
                                     <label for="emailAddrss">Email address </label>
                                     <input type="email" class="form-control" name="userEmail" id="emailAddrss" placeholder="Enter email" 
									 required/>
                                 </div>
								 <div class="form-group">
                                 <select name="nam" id="id" class="form-control" required>
									 <option>Select Dropdown</option>
									 <option value="1">1</option>
									 <option value="2">2</option>
									 <option value="3">3</option>
									 <option value="4">4</option>
									 
									 </select>
                                 </div>
								
								 <div class="form-group" style="text-align: center;">
                                     <button type="submit" class="btn btn-info">Save as User </button>
                                 </div>
                                 
                             </form>
							 <?php

	if(!empty($_GET['status'])){
				 $message=$_GET['status'];
				 if($message==='success'){
					 echo "<script type='text/javascript'>alert('submitted successfully!')</script>";
				 }else{
					 echo "<script type='text/javascript'>alert('failed!')</script>";
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
<!--main content end-->

</section>
</body>

</html>