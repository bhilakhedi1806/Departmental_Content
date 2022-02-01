<?php
include "../connect.php";
if (isset($_POST['submit']))
{
// get the form data
$Enrollment_Number = $_POST['Enrollment_Number'];
$Name = $_POST['Name'];
$sql="INSERT year2018(Enrollment_Number, Name) VALUES ('$Enrollment_Number','$Name')";
		if ($mysqli->query($sql)!==true)
		{
		echo "ERROR: Could not prepare SQL statement.";
		}
// redirec the user
header("Location: Student_Admin_2018.php");
}
// close the mysqli connection
$mysqli->close();
?>


<html>
<head>
<title>
New Record</title>
</head>
<body>
<h1>New Record</h1>

<form action="" method="post">
<div>

<strong>Enrollment_Number: *</strong> <input type="text" name="Enrollment_Number" value=""/><br/>
<strong>Name: *</strong> <input type="text" name="Name" value=""/>
<p>* required</p>
<input type="submit" name="submit" value="Submit" />
</div>
</form>
</body>
</html>

