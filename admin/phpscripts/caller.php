<?php
  //This file is not called throught config.php

  require_once('config.php');

  if(isset($_GET['caller_id'])) {
    $dir = $_GET['caller_id'];
    if($dir == "logout"){
          // echo "Hello2";
      logged_out();
    }else if($dir == "deleteMovie"){
    $id = $_GET['id'];
    deleteMovies($id);
    } else {
      echo "Caller id was passed incorrectly";
    }
  }





 ?>
