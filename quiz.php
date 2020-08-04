
<?php
	$servername = "mydb.itap.purdue.edu";
	$username = "dreinaux";
	$password = "edmath16";
	$dbname = "dreinaux";
	// Create connection
	$conn = mysqli_connect($servername, $username, $password , $dbname);
	// Check connection
	if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
	}
	if(isset($_SERVER['HTTP_X_FORWARDED_FOR']) && $_SERVER['HTTP_X_FORWARTDED_FOR'] != '') {
$ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
$ip_address = $_SERVER['REMOTE_ADDR'];
}

echo "Data submitted by IP address: $ip_address";

  if ($_POST['sb'] == 'submit1'){
    $type = $_POST['type'];
    $sql = "INSERT INTO Equipment (type) VALUES ('$type')";
    $result = mysqli_query($conn, $sql);
    if ($result){
      echo "New equipment record successfully created! Please go back to the previous page to add another record.";
    }
    else{
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  if ($_POST['sb'] == 'submit2'){
    $fname = $_POST['cu_Fname'];
    $lname = $_POST['cu_Lname'];
    $gender = $_POST['gender'];
    $email = $_POST['cu_email'];
    $phone = $_POST['cu_phone'];
    $bd = $_POST['bd'];
    $sql = "INSERT INTO Customers (Fname, Lname, gender, email, PhoneNumber, BirthDay) VALUES ('$fname', '$lname', '$gender', '$email', '$phone', '$bd')";
    $result = mysqli_query($conn, $sql);
    if ($result){
      echo "New customer record successfully created! Please go back to the previous page to add another record.";
    }
    else{
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  if ($_POST['sb'] == 'submit3'){
    $price = $_POST['price'];
    $type = $_POST['m_type'];
    $sql = "INSERT INTO Memberships (PricePerMonth, type) VALUES ('$price', '$type')";
    $result = mysqli_query($conn, $sql);
    if ($result){
      echo "New membership record successfully created! Please go back to the previous page to add another record.";
    }
    else{
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  if ($_POST['sb'] == 'submit4'){
    $name = $_POST['cl_name'];
    $start = $_POST['start'];
    $end = $_POST['end'];
    $sql = "INSERT INTO Classes (name, start, ends) VALUES ('$name', '$start', '$end')";
    $result = mysqli_query($conn, $sql);
    if ($result){
      echo "New class record successfully created! Please go back to the previous page to add another record.";
    }
    else{
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

  if ($_POST['sb'] == 'submit5'){
    $fname = $_POST['t_Fname'];
    $lname = $_POST['t_Lname'];
    $email = $_POST['t_email'];
    $phone = $_POST['t_phone'];
    $sql = "INSERT INTO Trainers (Fname, Lname, email, PhoneNumber) VALUES ('$fname', '$lname', '$email', '$phone')";
    $result = mysqli_query($conn, $sql);
    if ($result){
      echo "New trainer record successfully created! Please go back to the previous page to add another record.";
    }
    else{
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
  }

	mysqli_close($conn);
?>
