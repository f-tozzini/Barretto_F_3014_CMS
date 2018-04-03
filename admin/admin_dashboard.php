<?php
	require_once('admin/phpscripts/config.php');
  ini_set('display_errors',1);
  error_reporting(E_ALL);

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = "Action";
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>The Movie APP</title>
<link rel="stylesheet" href="../css/main.css">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
  <img src="images/header.jpg" alt="header image" id="header-img">
  <div id="admin-container">
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>
	<i class="far fa-star"></i>

	<h3>Here is your</h3>
	<h2>Personalized Movie Selection</h2>

  <?php
  	if(!is_string($getMovies)){
  		while($row = mysqli_fetch_array($getMovies)){
  			echo "<img src=\"images/{$row['movies_thumbs']}\" alt=\"{$row['movies_title']}\">
  				<h2>{$row['movies_title']}</h2>
  				<p>{$row['movies_year']}</p>
  			";
  		}
  	}else{
  		echo "<p class=\"error\">{$getMovies}</p>";
  	}
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
