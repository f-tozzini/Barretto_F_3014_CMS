<?php
	require_once('phpscripts/config.php');
  ini_set('display_errors',1);
  error_reporting(E_ALL);

	$tbl = 'tbl_movies';
  $col = 'movies_title';
  $moviesEdit = getAll($tbl);

?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>The Movie APP</title>
  <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="../css/main.css">
<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
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
<!-- </div> -->
	<h3>Here is your</h3>
	<h2>Movies Edit List</h2>

<div class="edit-container">

<?php
while($row = mysqli_fetch_array($moviesEdit)){
  echo "
      <div class=\"edit-box\">
      <h4>{$row['movies_title']}</h4>
      <a class=\"admin-button edit\" href=\"admin_editall.php?id={$row['movies_id']}\">Edit Movie</a>

			<a class=\"admin-button delete\" href=\"phpscripts/caller.php?caller_id=deleteMovie&id={$row['movies_id']}\">Delete Movie</a>
      </div>
  ";
}

 ?>

</div>



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
