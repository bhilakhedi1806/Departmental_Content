
<?php 
include_once("header.php");
include_once("content_left.php");
?>

<html>
    <head>
        <title> 2016 Year Student</title>
        <style> 
           .cse
            {
              
	margin-left: 5px 5px;
	text-align: left;
        padding: 10px;
         font-size: 25px;
            }
            table{
               margin:1% 30%;
                font-size: 18px;
            }
            th{
                background-color: blue;
            }
            tr:nth-child(even){
                     background-color: #999;
                 }
               tr:hover{
                background-color: lightblue;
            }
            
            .student_data{
                margin-left: 20%;
              
            }        </style>

    </head>
    <body>
    

        <h1 class="cse">&nbsp;&nbsp;&nbsp;&nbsp;list of student year of 2016</h1>
<?php
include('connect.php');
$result = $mysqli->query("SELECT * FROM year2016 ");
if ($result)
{
	if ($result->num_rows > 0)
	{
	echo "<table border='1' cellpadding='20'>";
	echo "<tr><th>Enrollment_Number</th><th> Name</th></tr>";
		while ($row = $result->fetch_object())
		{
		echo "<tr>";
		echo "<td>" . $row->Enrollment_Number . "</td>";
		echo "<td>" . $row->Name . "</td>";
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



     </body>
</html>
<?php
include_once("footer.php");
?>