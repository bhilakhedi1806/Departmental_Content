<?php
include "../connect.php";
if (isset($_POST['submit']))
{
// get the form data
$Sub_code = $_POST['Sub_code'];
$Subjects = $_POST['Subjects'];
$sql="INSERT first_sem(Sub_code, Subjects) VALUES ('$Sub_code','$Subjects')";
		if ($mysqli->query($sql)!==true)
		{
		echo "ERROR: Could not prepare SQL statement.";
		}
// redirec the user
header("Location: Course_map_Admin_fouth_sem.php");
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

<strong>Subject Code: *</strong> <input type="text" name="Sub_code" value=""/><br/>
<strong>Subject: *</strong> <input type="text" name="Subjects" value=""/>
<p>* required</p>
<input type="submit" name="submit" value="Submit" />
</div>
</form>
</body>
</html>

