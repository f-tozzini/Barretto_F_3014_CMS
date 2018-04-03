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
    $genre = ($_POST['genre']);
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


    <label> Cover Image</label>
    <input type ="file" name="thumbs" value="">
    <br><br>

    <label>Movie Title</label>
    <input type ="text" name="title" value="">
    <br><br>

    <label>Movie Year</label>
    <input type ="text" name="year" value="">
    <br><br>

    <label>Movie Description</label>
    <input type ="text" name="description" value="">
    <br><br>

    <label>Movie Rating</label>
    <input type ="text" name="rating" value="">
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
