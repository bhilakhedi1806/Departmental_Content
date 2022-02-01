<?php
include_once("header.php");
include_once("content_left.php");
?>


    <head>
        <title> 2018 Year Student</title> 
        <style> 
                        .cse
            {
             
	margin-left: 7px 15px;
	text-align: left;
        padding: 10px;
        font-size: 18px;
            }
            table{
               margin-left: 13%;
                 }
                 th{
                     border: 1px solid #4ae;
                     padding: 8px;
                     padding-top: 12px;
                     padding-bottom: 12px;
                     text-align: left;
                     background-color: blue;
                     color: white;
                 }
                 tr:nth-child(even){
                     background-color: cadetblue;
                 }
               tr:hover{
                background-color: lightblue;
            }
            
            
            .student_data{
                margin-left: 20%;
              
            }

        </style>
    </head>
   
    

    <h1 class="cse"> &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;list of student year of 2018</h1>
        <body class="cse">
<?php 
  
include('connect.php');
$result = $mysqli->query("SELECT * FROM year2018 ");
if ($result)
{ 
	if  ($result->num_rows > 0)
	{
            echo '<div class="student_data">';
	echo " <table  border='2' cellpadding='12'>";
	echo "<tr><th>Enrollment_Number</th><th> Name</th></tr>";
		while ($row = $result->fetch_object())
	 {
		echo "<tr>";
		echo "<td>" . $row->Enrollment_Number . "</td>";
		echo "<td>" . $row->Name . "</td>";
		echo "</tr>";
		}  
	echo "</table>";
        echo '</div>';
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

<?php
include_once("footer.php");
?>