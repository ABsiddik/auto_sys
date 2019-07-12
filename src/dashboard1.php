<?php include "../template/topbar.php";?>
<!--main content start-->
<style>
	.market-updates h4 a {
		color: white !important;
	}

	.market-updates h4 a:hover {
		color: blue !important;
	}
</style>
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-md-12 w3ls-graph">
				<div class="agileinfo-grap">
					<div class="agileits-box" style="text-align: center;">
						<div class="toolbar">
							Hello,
							<?php echo $_SESSION['userName']; ?>
						</div>
						<header class="agileits-box-header clearfix">
							<h3>Welcome to Auto Sys </h3>
						</header>
						<div class="agileits-box-body clearfix">
							<div id="hero-area">
								You are logged as <?php echo $_SESSION['userRole']; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="agil-info-calendar">
		 <!-- calendar -->
		 <div class="col-md-6 agile-calendar">
			 <div class="calendar-widget">
                 <div class="panel-heading ui-sortable-handle">
					 <span class="panel-icon">
                       <i class="fa fa-calendar-o"></i>
                     </span>
                     <span class="panel-title"> Calendar Widget </span>
                 </div>
				 <!-- grids -->
					 <div class="agile-calendar-grid">
						 <div class="page">
							
							 <div class="w3l-calendar-left">
								 <div class="calendar-heading">
									
								 </div>
								 <div class="monthly" id="mycalendar"></div>
							 </div>
							
							 <div class="clearfix">  </div>
						 </div>
					 </div>
			 </div>
		 </div>
		 <!-- //calendar -->
		 <div class="col-md-6 w3agile-notifications">
			 <div class="notifications">
				 <!--notification start-->
				
					 <header class="panel-heading">
						Notification 
					 </header>
					 <div class="notify-w3ls">
						 <div class="alert alert-info clearfix">
							 <span class="alert-icon"><i class="fa fa-envelope-o"></i></span>
							 <div class="notification-info">
								 <ul class="clearfix notification-meta">
									 <li class="pull-left notification-sender"><span><a href="#">Jonathan Smith </a></span> send you a ____  </li>
									 <li class="pull-right notification-time">1 min ago </li>
								 </ul>
								 <p>
									Urgent meeting for next ________
								 </p>
							 </div>
						 </div>
						 <div class="alert alert-danger">
							 <span class="alert-icon"><i class="fa fa-facebook"></i></span>
							 <div class="notification-info">
								 <ul class="clearfix notification-meta">
									 <li class="pull-left notification-sender"><span><a href="#">Jonathan Smith </a></span> mentioned you in _ post  </li>
									 <li class="pull-right notification-time">7 Hours Ago </li>
								 </ul>
								 <p>
									Very cool photo jack
								 </p>
							 </div>
						 </div>
						 <div class="alert alert-success ">
							 <span class="alert-icon"><i class="fa fa-comments-o"></i></span>
							 <div class="notification-info">
								 <ul class="clearfix notification-meta">
									 <li class="pull-left notification-sender">You have 5 message ______ </li>
									 <li class="pull-right notification-time">1 min ago </li>
								 </ul>
								 <p>
									 <a href="#">Anjelina Mewlo, Jack Flip </a> and  <a href="#">3 others </a>
								 </p>
							 </div>
						 </div>
						 <div class="alert alert-warning ">
							 <span class="alert-icon"><i class="fa fa-bell-o"></i></span>
							 <div class="notification-info">
								 <ul class="clearfix notification-meta">
									 <li class="pull-left notification-sender">Domain Renew Deadline 7 ____ ahead </li>
									 <li class="pull-right notification-time">5 Days Ago </li>
								 </ul>
								 <p>
									Next 5 July Thursday __ the last day
								 </p>
							 </div>
						 </div>
						 <div class="alert alert-info clearfix">
							 <span class="alert-icon"><i class="fa fa-envelope-o"></i></span>
							 <div class="notification-info">
								 <ul class="clearfix notification-meta">
									 <li class="pull-left notification-sender"><span><a href="#">Jonathan Smith </a></span> send you a ____  </li>
									 <li class="pull-right notification-time">1 min ago </li>
								 </ul>
								 <p>
									Urgent meeting for next ________
								 </p>
							 </div>
						 </div>
						
					 </div>
				
				 <!--notification end-->
				 </div>
			 </div>
			 <div class="clearfix">  </div>
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