
<?php 
include_once("../header.php");
include_once("../content_left.php");
?>
<html>
    <head>
        <title> 2017 Year Student</title>
<style> 
                                .cse
            {
              
	padding: 1%;
	text-align: left;
         font-size: 18px;
        
            }
            table{
               margin: 1% 30%;
               text-align: left;
                font-size: 16px;
               
            }
            th{
                background-color:blue; 
            }
            tr:nth-child(even){
                     background-color: #999;
                 }
               tr:hover{
                background-color: lightblue;
            }
            
            .student_data{
                margin-left: 5%;
              
            }       </style>
     
    </head>
    <body>
    

        <h1 class="cse">&nbsp;&nbsp;&nbsp;&nbsp;list of student year of 2017</h1>
<?php
include('../connect.php');
$result = $mysqli->query("SELECT * FROM year2017 ");
if ($result)
{
	if ($result->num_rows > 0)
	{
	echo "<table border='1' cellpadding='20'>";
	echo "<tr><th>Enrollment_Number</th><th> Name</th><th>Edit</th><th>Delete</th></tr>";
		while ($row = $result->fetch_object())
		{
		echo "<tr>";
		echo "<td>" . $row->Enrollment_Number . "</td>";
		echo "<td>" . $row->Name . "</td>";
                echo "<td><a href='Course_map_edit_first_sem.php?id=" . $row->Enrollment_Number . "'>Edit</a></td>";
		echo "<td><a href='Student_delete_2017.php?id=" . $row->Enrollment_Number . "'>Delete</a></td>";
	
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
                        <a href="Student_insert_2017.php"><strong>Add new Record</strong></a>
                    </td>
                </tr>
            </table>
        </div>


     </body>
</html>

<?php
include_once("../footer.php");
?>