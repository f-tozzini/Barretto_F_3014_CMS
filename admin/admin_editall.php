<?php
  require_once('phpscripts/config.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>The Movie App</title>
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../css/main.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>

  <img src="images/header.jpg" alt="header image" id="header-img">



  <a href="admin_index.php">
    <i class="fa fa-home"></i>
  </a>

  <a href="admin_addmovie.php">
    <i class="ion-plus-round menu-icon"></i>
  </a>
  <a href="admin_editlist.php">
    <i class="ion-edit menu-icon"></i>
  </a>
  <a href="admin_dashboard.php">
    <i class="ion-android-favorite menu-icon"></i>
  </a>

  <a href="phpscripts/caller.php?caller_id=logout" class="sign-out">Sign Out</a>

  <div id="admin-container">
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <i class="far fa-star"></i>
    <br>
  <?php
      $tbl = "tbl_movies";
      $col = "movies_id";
      $id = $_GET['id'];
      echo single_edit($tbl, $col, $id);
  ?>

  <i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>

  </div>

  <img src="images/footer.jpg" alt="footer image" id="footer-img">
</body>
</html>
