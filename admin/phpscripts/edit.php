<?php
  include('connect.php');

    $tbl = $_POST['tbl'];
    $col = $_POST['col'];
    $id = $_POST['id'];

      unset($_POST['tbl']);
      unset($_POST['col']);
      unset($_POST['id']);
      unset($_POST['submit']);

      $num = count($_POST);

      $qstring = "UPDATE {$tbl} SET ";

      foreach ($_POST as $key => $value) {
        $count++;
        if($count != $num){
            $qstring .= $key. " = '" .htmlspecialchars($value, ENT_QUOTES)."', ";
        } else {
        $qstring .= $key. " = '" .htmlspecialchars($value, ENT_QUOTES)."' ";
      }
    }
      $qstring .= "WHERE {$col}={$id}";

        // echo $qstring;
    // echo count($_POST);

    $updatequery = mysqli_query($link, $qstring);

    if($updatequery){
      header("Location:../admin_dashboard.php");
    }else{
      echo "Problem";
    }

  mysqli_close($link);

  function deleteMovies($id) {
    include('connect.php');
    $delstring = "DELETE FROM tbl_movies WHERE movies_id = {$id}";
    $delquery = mysqli_query($link, $delstring);
    if($delquery) {
      redirect_to("../admin_dashboard.php");
    }else{
      $message ="Sad";
      return $message;
    }

  mysqli_close($link);
  }


?>
