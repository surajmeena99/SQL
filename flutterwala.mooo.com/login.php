<?php
  $db = mysqli_connect('localhost','username','password','dbname');
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

  $sql = "SELECT * FROM users WHERE username = '".$username."' AND password = '".$password."' ";
  
  $result = mysqli_query($db, $sql);
  $count = mysqli_num_rows($result);
  
  if($count == 1){
    echo json_encode("Success");
  } else {
    echo json_encode("Error");
  }
?>
