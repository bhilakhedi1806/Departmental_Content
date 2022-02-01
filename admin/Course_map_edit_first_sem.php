<?php
// including the database connection file
include("../connect.php");
if(isset($_POST['update']))
{
 $id = $_POST['id'];

 $Sub_code=$_POST['Sub_code'];
 $Subjects=$_POST['Subjects'];

 $result = $mysqli->query("UPDATE first_sem SET Sub_code='$Sub_code',Subjects='$Subjects' WHERE Sub_code='$id'");

 header("Location: Course_map_Admin_first_sem.php");
 }
//getting id from url
$id = $_POST['Sub_code'];
//selecting data associated with this particular id
$result = $mysqli->query("SELECT * FROM first_sem WHERE Sub_code='$id'");
while($res = $result->fetch_object())
{
 $Sub_code = $res->Sub_code;
 $Subjects = $res->Subjects;
}
?>
<html>
<head>
 <title>Edit Data</title>
</head>
<body>
 <h1>Edit Record</h1>


<form action="#" method="post">
<div>
<strong>Subject Code: *</strong> <input
type="text" name="Sub_code" value="<?php echo
$Sub_code;?>"/><br/>
<strong>Subjects: *</strong> <input
type="text" name="Subjects" value="<?php echo
$Subjects;?>"/>
<p>* required</p>
<input type="hidden" name="id" value=<?php echo $_GET['id'];?>>
<input type="submit" name="update" value="Update">
</div>
</form>
</body>
</html>

