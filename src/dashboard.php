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

	</section>
	<!-- footer -->
	<?php include "../template/footer.php";   ?>
	<!-- / footer -->
</section>
<!--main content end-->

</section>
</body>

</html>