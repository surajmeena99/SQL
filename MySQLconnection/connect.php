//do not access this file directly from browser
// Always call this file from index.html file otherwise you will get undefinded $username,. ... errors
//URL : http://localhost/MySQLconnection/index.html

<?php
	$username = $_POST['username'];
	$password = $_POST['password'];
	$gender = $_POST['gender'];
	$email = $_POST['email'];
	$phoneCode = $_POST['phoneCode'];
	$phone = $_POST['phone'];

	// Database connection
	$conn = new mysqli('localhost','root','suraj579','webconnection');
	
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into registration(username, password, gender, email, phoneCode, phone) values(?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("sssssi", $username, $password, $gender, $email, $phoneCode, $phone);
		$execval = $stmt->execute();
		echo $execval;
		echo "Registration successfully...";
		$stmt->close();
		$conn->close();
	}
?>