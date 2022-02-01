
<?php 
include_once("header.php");
include_once("content_left.php");
?>
<html>
    <head>
        <title> First Sem course</title>
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
    

        <h1 class="cse">list of subjects in First semester</h1>
<?php
include('connect.php');
$result = $mysqli->query("SELECT * FROM first_sem ORDER BY Sub_code ASC ");
if ($result)
{
	if ($result->num_rows > 0)
	{
	echo "<table border='1' cellpadding='20'>";
	echo "<tr><th>No</th><TH>Sub_code</th><th>Subjects</th></tr>";
        $i=0;
		while ($row = $result->fetch_object())
		{
                    $i++;
		echo "<tr>";
		echo "<td>" . $i . "</td>";
                echo "<td>" . $row->Sub_code . "</td>";
		echo "<td>" . $row->Subjects . "</td>";
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