<?php
include('../connect.php');

if (isset($_GET['id']))
{
$id = $_GET['id'];
$sql="DELETE FROM year2017 WHERE Enrollment_Number = '$id'";
	if ($mysqli->query($sql)!==true)
	{
	echo "ERROR: could not prepare SQL statement.";
	}
$mysqli->close();

header("Location: Student_Admin_2017.php");
}
else
{
header("Location: Student_Admin_2017.php");}
?>

