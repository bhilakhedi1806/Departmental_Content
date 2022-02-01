<?php
include('../connect.php');

if (isset($_GET['id']))
{
$id = $_GET['id'];
$sql="DELETE FROM notice WHERE Name = '$id'";
	if ($mysqli->query($sql)!==true)
	{
	echo "ERROR: could not prepare SQL statement.";
	}
$mysqli->close();

header("Location: Notice_Admin.php");
}
else
{
header("Location: Notice_Admin.php");}
?>

