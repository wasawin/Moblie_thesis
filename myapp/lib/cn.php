<?php
  $servername = "localhost";
  $username = "username";
  $password = "password";
  $dbname = "database_name";

  // Create connection
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  // Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  $sql = "SELECT * FROM table_name";
  $result = mysqli_query($conn, $sql);

  $data = array();
  while($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
  }

  echo json_encode($data);

  mysqli_close($conn);
?>
