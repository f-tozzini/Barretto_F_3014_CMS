<?php
	require_once('phpscripts/config.php');
  ini_set('display_errors',1);
  error_reporting(E_ALL);

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = $_GET['filter'];
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
<link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>
  <img src="images/header.jpg" alt="header image" id="header-img">
  <a href="admin_index.php">
    <i class="fa fa-home"></i>
  </a>
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

  <div class="mainNav">
    <ul>
      <a href="admin_dashboard.php?filter=Action"><li>Action</li></a>
      <a href="admin_dashboard.php?filter=Animation"><li>Animation</li></a>
      <a href="admin_dashboard.php?filter=Classic"><li>Classic</li></a>
      <a href="admin_dashboard.php?filter=Comedy"><li>Comedy</li></a>
      <a href="admin_dashboard.php?filter=Drama"><li>Drama</li></a>
      <a href="admin_dashboard.php?filter=Horror"><li>Horror</li></a>
      <a href="admin_dashboard.php?filter=Romance"><li>Romance</li></a>
      <a href="admin_dashboard.php?filter=TV Show"><li>TV Show</li></a>
      <a href="admin_dashboard.php"><li class="button">Reset Filter</li></a>

      <!-- <?php echo $filterQuery ?> -->
    </ul>

  </div>
<div class="container">
  <?php


  	if(!is_string($getMovies)){
  		while($row = mysqli_fetch_array($getMovies)){
  			echo "

        <div class=\"movie-box\">
          <img src=\"images/{$row['movies_thumbs']}\" alt=\"{$row['movies_title']}\">
            <h4>{$row['movies_title']}</h4>

              <h5><i class=\"fas fa-star\"></i>
              </i>67 <span class=\"year\">{$row['movies_year']}</span> </h5>
            <p>{$row['movies_desc']}</p>
        </div>
  			";
  		}


  	}else{
  		echo "<p class=\"error\">{$getMovies}</p>";
  	}
  ?>
</div>

  <br><br><br><br>
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
