<?php
  require_once('phpscripts/config.php');

  $tbl = "tbl_genre";
  $genQuery = getAll($tbl);
  // echo $genQuery;

  if(isset($_POST['submit'])){
    $thumbs = $_FILES['thumbs'];
    $title = $_POST['title'];
    $year = ($_POST['year']);
    $description = ($_POST['description']);
    $rating = ($_POST['rating']);
    $genre = ($_POST['genList']);
    $result = addMovie($thumbs, $title, $year, $description, $rating, $genre);
    $message = $result;
      // echo $cover['type'];
      // echo $cover['name'];
      // echo $cover['size'];
      // echo $cover['tmp_name'];
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>The Movie APP</title>
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

  <div id="login-container">

    <i class="far fa-star"></i>
  	<i class="far fa-star"></i>
  	<i class="far fa-star"></i>
  	<i class="far fa-star"></i>
  	<i class="far fa-star"></i>
  	<i class="far fa-star"></i>
  	<i class="far fa-star"></i>

  <h3>Add Here</h3>
  <h2>Your New Movie</h2>

  <?php if (!empty($message)){ echo $message; }?>
  <form action ="admin_addmovie.php" method="post" enctype="multipart/form-data">


    <label> Cover Image</label>
    <input type ="file" name="thumbs" value="">
    <br><br>

    <label>Movie Title</label>
    <input type ="text" name="title" value="">
    <br><br>

    <label>Movie Year</label>
    <input type ="text" name="year" value="">
    <br><br>

    <label>Movie Desc</label>
    <input type ="text" class="description-form" name="description" value="">
    <br><br>

    <label>Movie Rating</label>
    <input type ="text" name="rating" value="">
    <br><br>

        <label>Movie Genre</label>
      <select name="genList" class="genList">
        <option value="">Please Select a Genre</option>

        <?php
        while($row = mysqli_fetch_array($genQuery)){
          echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
        }
        ?>

      </select>
<br>
    <input type ="submit" name="submit" value="ADD MOVIE" class="button">
  </form>

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
