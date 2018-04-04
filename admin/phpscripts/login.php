<?php
  function logIn($username, $password, $ip) {
    require_once('connect.php');
    $username = mysqli_real_escape_string($link, $username);
    $password = mysqli_real_escape_string($link, $password);
    $loginstring = "SELECT * FROM tbl_users WHERE user_username= '{$username}' AND user_password='{$password}'";
    // echo $loginstring;
    $userSet = mysqli_query($link, $loginstring);

    if(mysqli_num_rows($userSet)){
      $founduser = mysqli_fetch_array($userSet, MYSQLI_ASSOC);
      $id = $founduser['user_id'];
      $_SESSION['user_id'] = $id;
      $_SESSION['user_username'] = $founduser['user_name'];

      if(mysqli_query($link, $loginstring)){
        $update ="UPDATE tbl_users SET user_ip='{$ip}' WHERE user_id={$id}";
        $updatequery = mysqli_query($link, $update);
      }
      //return $redirectLogin;
      redirect_to("admin_index.php");
      // echo $id;
    }else{
      $message = "Wrong!";
      return $message;
    }

    mysqli_close($link);
  }

 ?>
