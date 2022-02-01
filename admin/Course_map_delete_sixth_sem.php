<?php
include('../connect.php');

if (isset($_GET['id']))
{
$id = $_GET['id'];
$sql="DELETE FROM sixth_sem WHERE Sub_code = $id";
	if ($mysqli->query($sql)!==true)
	{
	echo "ERROR: could not prepare SQL statement.";
	}
$mysqli->close();

header("Location: Course_map_Admin_sixth_sem.php");
}
else
{
header("Location: Course_map_Admin_sixth_sem.php");}
?>

