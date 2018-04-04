<?php
  require_once('phpscripts/config.php');
  $result = multiReturns(17);
  list($add, $multiply) = multiReturns(229);
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Welcome to your login pannel</title>
  <link rel="stylesheet" href="../css/main.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>
<body>

  <img src="images/header.jpg" alt="header image" id="header-img">
  <div id="login-container">
  <?php
      echo "Result 1: {$result[0]}<br><br>";
      echo "Result 2: {$result[1]}<br><br>";
      echo "Result 1 from list: {$add}<br><br>";
      echo "Result 2 from list: {$multiply}<br><br>";
  ?>

  </div>
  <img src="images/footer.jpg" alt="footer image" id="footer-img">
</body>
</html>
