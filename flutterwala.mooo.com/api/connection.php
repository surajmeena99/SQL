<?php
class dbObj
{
  /* please write as per your connection information */
  var $servername = "localhost";
  var $username = "surajmeena";
  var $password = "123456789";
  var $dbname = "surajmeena";
  var $conn;

  function getConnstring()
  {
    $con = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname) or die("Connection failed: " . mysqli_connect_error());
    /* check connection */
    if (mysqli_connect_errno()) {
      printf("Connect failed: %s\n", mysqli_connect_error());
      exit();
    } else {
      $this->conn = $con;
    }
    return $this->conn;
  }
}
?>
