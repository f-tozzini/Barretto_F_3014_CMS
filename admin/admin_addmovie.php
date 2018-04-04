<?php
  require_once('phpscripts/config.php');

  $tbl = "tbl_genre";
  $genQuery = getAll($tbl);
  // echo $genQuery;

  if(isset($_POST['submit'])){
    $cover = $_FILES['cover'];
    $title= $_POST['_title'];
    $year = ($_POST['year']);
    $run = ($_POST['run']);
    $story = ($_POST['story']);
    $trailer = ($_POST['trailer']);
    $release = ($_POST['release']);
    $genre = ($_POST['genre']);
    $result = addMovie($cover, $title, $year, $run, $story, $trailer, $release, $genre);
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
  <link rel="stylesheet" href="../css/main.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>

  <!-- <img src="images/header.jpg" alt="header image" id="header-img"> -->
  <div id="login-container">
  <h3>Login here for your</h3>
  <h2>Personalized Movie Selection</h2>

  <?php if (!empty($message)){ echo $message; }?>
  <form action ="admin_addmovie.php" method="post" enctype="multipart/form-data">

    <!-- <i class="fas fa-sign-in-alt"></i> -->
    <label> Cover Image</label>
    <input type ="file" name="cover" value="">
    <br><br>

    <!-- <i class="fas fa-unlock"></i> -->
    <label>Movie Title</label>
    <input type ="text" name="title" value="">
    <br><br>

    <label>Movie Year</label>
    <input type ="text" name="year" value="">
    <br><br>

    <label>Movie Runtime</label>
    <input type ="text" name="run" value="">
    <br><br>

    <label>Movie Storyline</label>
    <input type ="text" name="story" value="">
    <br><br>

    <label>Movie Trailer</label>
    <input type ="text" name="trailer" value="">
    <br><br>

    <label>Movie Release</label>
    <input type ="text" name="release" value="">
    <br><br>

      <select name="genList">
        <option value="">Please select a movie genre</option>

        <?php
        while($row = mysqli_fetch_array($genQuery)){
          echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
        }
        ?>

      </select>

    <input type ="submit" name="submit" value="ADD MOVIE" class="button">
  </form>

</div>
  <img src="images/footer.jpg" alt="footer image" id="footer-img">
</body>
</html>
