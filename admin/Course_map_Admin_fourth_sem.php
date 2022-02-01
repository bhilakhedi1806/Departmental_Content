
<?php 
include_once("../header.php");
include_once("../content_left.php");
?>
<html>
    <head>
        <title> fourth Sem course</title>
<style> 
                        .cse
            {
              
	padding:2% 4%;
	text-align: center;
        margin: 2px 1px;
        
            }
            table{
               margin-left:30%;
            }
            .student_data{
                margin-left: 20%;
                }

        </style>
     
    </head>
    <body>
    

        <h1 class="cse">list of subjects in Fourth semester</h1>
<?php
include('../connect.php');
$result = $mysqli->query("SELECT * FROM fourth_sem ORDER BY Sub_code ASC ");
if ($result)
{
	if ($result->num_rows > 0)
	{
	echo "<table border='1' cellpadding='20'>";
	echo "<tr><th>No</th><TH>Sub_code</th><th>Subjects</th><th>Edit</th><th>Delete</th></tr>";
        $i=0;
		while ($row = $result->fetch_object())
		{
                    $i++;
		echo "<tr>";
		echo "<td>" . $i . "</td>";
                echo "<td>" . $row->Sub_code . "</td>";
		echo "<td>" . $row->Subjects . "</td>";
                echo "<td><a href='Course_map_edit_fourth_sem.php?id=" . $row->Sub_code . "'>Edit</a></td>";
		echo "<td><a href='Course_map_delete_fourth_sem.php?id=" . $row->Sub_code . "'>Delete</a></td>";
	
		echo "</tr>";
		}
	echo "</table>";
	}
	else
	{
	echo "No results to display!";
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
                        <a href="Course_map_insert_fourth_sem.php"><strong>Add new Record</strong></a>
                    </td>
                </tr>
            </table>
        </div>


     </body>
</html>

<?php
include_once("../footer.php");
?>