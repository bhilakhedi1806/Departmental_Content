
<?php 
include_once("../header.php");
include_once("../content_left.php");
?>

<html>
    <head>
        <title> CSE NOTICE </title>
        <style> 
                        .cse
            {
              
	padding: 10px 5px;
	text-align: center;
        margin: 2px 5px;
        
            }

        </style>

    </head>
    <body>
        <h1 class="cse"> NOTICE </h1>
       <?php 
  
include('../connect.php');
$result = $mysqli->query("SELECT * FROM notice ");
if ($result)
{ 
	if  ($result->num_rows > 0)
	{
	echo " <table  border='1' cellpadding='20'>";

		while ($row = $result->fetch_object())
	 {
		echo "<tr>";
	
		echo "<td>" . $row->Name . "</td>";
                 echo "<td><a href='Notice_edit.php?id=" . $row->Name . "'>Edit</a></td>";
		echo "<td><a href='Notice_delete.php?id=" . $row->Name . "'>Delete</a></td>";
	
		echo "</tr>";
		}  
	echo "</table>";
	}
	else
	{
	echo "No Notice Avilabe!";
	}
}
else
{
echo "Error: " . $mysqli->error;
}
$mysqli->close();
?>


        <div>
            <table border="2px solid black">
                <tr>
                    <td>
            <a href="Notice_insert.php">Add new Notice</a>
            </td>
                </tr>
            </table>
        </div>

     </body>
</html>
<?php
include_once("../footer.php");
?>