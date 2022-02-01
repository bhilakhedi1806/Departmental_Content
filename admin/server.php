<?php
$localhost="localhost";
$username="root";
$password="";
$database="student";

$mysqli=new mysqli($localhost,$username,$password,$database);
// Check connection
  if (mysqli_connect_errno())
  {
  	echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
//mysql_connect('localhost',$username,$password);
//@mysql_select_db($database) or die( "Unable to select database");
//echo "conbected";

?>