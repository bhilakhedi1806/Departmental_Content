<?php
include "../connect.php";
if (isset($_POST['submit']))
{
// get the form data

$Name = $_POST['Name'];
$sql="INSERT notice( Name) VALUES ('$Name')";
		if ($mysqli->query($sql)!==true)
		{
		echo "ERROR: Could not prepare SQL statement.";
		}
// redirec the user
header("Location: Notice_Admin.php");
}
// close the mysqli connection
$mysqli->close();
?>


<html>
<head>
<title>
New Notice</title>
</head>
<body>
<h1>New Notice</h1>

<form action="" method="post">
<div>

<strong>New Notice: </strong> <input type="text" name="Name" value=""/><br/>

<input type="submit" name="submit" value="Submit" />
</div>
</form>
</body>
</html>

