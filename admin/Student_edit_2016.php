<?php
$Enrollment_Number='';
$Name='';
if(isset($_GET['id'])){
	$id=$_GET['id'];
	if ($stmt = $mysqli->prepare("select * FROM year2016 WHERE Enrollment_Number = $id"))
		{
		$stmt->bind_param("i",$id);
		$result=$stmt->execute();
		$firstname=$result->Enrollment_Number;
		$lastname=$result->Name;
		$stmt->close();
		}
 
}


?>


<html>
<head>
<title>
</title>
</head>
<body>

<form action="#" method="post">
<div>
<input type="hidden" name="id" value="<?php echo $Enrollment_Number; ?>" />
<p>ID: <?php echo $Enrollment_Number; ?></p>
<?php  ?>

<strong>Enrollment_Number: *</strong> <input type="text" name="Enrollment_Number"
value="<?php echo $Enrollment_Number; ?>"/><br/>
<strong>Name: *</strong> <input type="text" name="Name"
value="<?php echo $Name; ?>"/>
<p>* required</p>
<input type="submit" name="submit" value="Submit" />
</div>
</form>
</body>
</html>
