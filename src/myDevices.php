

<?php
  $conn = mysqli_connect('localhost', 'root', '', 'auto_sys');

  $sql = "SELECT * FROM user_device_maping";
  $result = mysqli_query($conn, $sql);

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<script type="application/x-javascript">
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!-- bootstrap-css -->
  <link rel="stylesheet" href="src/css/bootstrap.min.css" />
  <!-- //bootstrap-css -->
  <!-- Custom CSS -->
  <link href="src/css/style.css" rel='stylesheet' type='text/css' />
  <link href="src/css/style-responsive.css" rel="stylesheet" />
  <!-- font-awesome icons -->
  <link rel="stylesheet" href="src/css/font.css" type="text/css" />
  <link href="src/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="template/css1/morris.css" type="text/css" />
  <!-- calendar -->
 
  <script src="src/js/jquery2.0.3.min.js"></script>
  <script src="src/js/raphael-min.js"></script>
  <script src="src/js/morris.js"></script>
  <script src="src/js/jquery.min.js"></script>
  <script src="src/js/bootstrap.js"></script>



    <title>Hello, world!</title>
  </head>



  <body>
  <br><br><br>
    
    <div class="container">
      <div class="row">
        <div class="col-md-0">
          <a class="btn-btn-info" href="#"> device list </a> 
          <br>
        <a class="btn-btn-info" href="insertMydevice.php">add newdevice</a>



            </div>
        </div>
        <div class="col-md-12">
          <table class="table">
            <thead>
              <th>id</th>
              <th>user_id</th>
              <th>device_id</th>
              <th>maping_date</th>
              <th class="action">Action</th>

            </thead>
            <tbody>
            <?php while($row = mysqli_fetch_assoc($result)) { ?>
              <tr>
                <!-- <td> 1 </td>
                <td>salman</td>
                <td>26</td>
                <td>132</td> -->
                <td> <?php echo $row['id']?> </td>
                <td> <?php echo $row['user_id']?> </td>
                <td> <?php echo $row['device_id']?> </td>

                <?php echo "<td>" . date('Y-m-d', strtotime($row['maping_date'])) . "</td>"; ?>

                  




                
                 
                <td>
                  <a class="btn btn-info" href="showMydevice.php?id=<?php echo
                  $row['id']; ?>"> View </a>  <!--view click & id pass --> 
                  <a class="btn btn-warning" href="editMydevice.php?id=<?php echo
                  $row['id']; ?>"> Edit </a>
                  <a class="btn btn-danger" onclick="return confirm('Are you sure?')" 
                  href="deleteMydevice.php?id=<?php echo $row['id']; ?>"> Delete </a>
                </td>


              </tr>

              <?php } ?>
            </tbody>

          </table>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style type="text/css">
  .action {
  text-align: right;
}
.thead {
  text-align: left;
}
</style>



  </body>
</html>
