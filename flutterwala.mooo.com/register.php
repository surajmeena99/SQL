<?php

  $db = mysqli_connect('localhost','surmee9_fluttercrud','Suraj@579','surmee9_fluttercrud');
  if(!$db){
     echo "Database connection failed";
     exit();
  }
  
  // Get the raw POST data
  $json_data = file_get_contents("php://input");

  // Decode the JSON data
  $data = json_decode($json_data);

  // Extract username and password from the decoded JSON
  $username = $data->username;
  $password = $data->password;

  $sql = "SELECT * FROM users WHERE username = '".$username."' AND password = '".$password."' " ;
  
  $result = mysqli_query($db, $sql);
  $count = mysqli_num_rows($result);
  
  if($count == 1){
    echo json_encode("Error");
  } else {
    $insert = "INSERT INTO users(username, password) VALUES ('".$username."','".$password."')";
    $query = mysqli_query($db, $insert);
    if($query){
      echo json_encode("Success");
    }
  }

?>