<?php

  function single_edit($tbl, $col, $id) {
    $result = getSingle($tbl, $col, $id);
    $getResult = mysqli_fetch_array($result);

    echo "<form action=\"phpscripts/edit.php\" method=\"post\">";

    echo "<input hidden name =\"tbl\" value=\"{$tbl}\">";
    echo "<input hidden name =\"col\" value=\"{$col}\">";
    echo "<input hidden name =\"id\" value=\"{$id}\">";
    // echo mysqli_num_fields($result);
    for($i = 0; $i < mysqli_num_fields($result); $i++){
      $dataType = mysqli_fetch_field_direct($result, $i);
      $fieldName = $dataType->name;
      $fieldType = $dataType->type;

      if($fieldName != $col){
          echo "<label>{$fieldName}</label><br>";
          if($fieldName === "movies_desc"){
            echo "<input type=\"text\" class=\"description-form\" name=\" {$fieldName}\"value =\"{$getResult[$i]}\"><br><br>";
          }else{
            echo "<input type=\"text\" name=\" {$fieldName}\"value =\"{$getResult[$i]}\"><br><br>";
          }
      }

      // echo $fieldName."<br>";
      // echo $fieldType."<br><br>";
    }
    echo "<input type=\"submit\" name=\"submit\" class=\"admin-button\" value=\"Save Content\">";
    echo "</form>";
}

 ?>
