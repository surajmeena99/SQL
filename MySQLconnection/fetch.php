<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DataBase Connection</title>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>UserName</th>
            <th>Email</th>
            <th>Password</th>
            <th>Phone No.</th>
            <th>Gender</th>
        </tr>
        <?php
        $conn = mysqli_connect("localhost", "root", "suraj579","webconnection");
        $sql = "select * from registration";
        $result = $conn-> query($sql);

        if($result-> num_rows > 0){
            while($row = $result-> fetch_assoc()){
                echo "<tr><td>". $row["id"]. "</td><td>". $row["username"]. "</td><td>". $row["email"]. "</td><td>". $row["password"]. "</td><td>". $row["phone"]. "</td><td>". $row["gender"]."</tr>";
            }
        }else{
            echo "No Results";
        }
        $conn-> close();
        ?>
    </table>
</body>
</html>