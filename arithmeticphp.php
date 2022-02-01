<?php
//Arithmetic 
$a=10;
$b=5;
echo "Addition: ".($a+$b)."<br>"; 
echo "substraction: ".($a-$b)."<br>";
echo "multipication: ".($a*$b)."<br>";  
echo "division: ".($b/$a)."<br>";  
echo "module: ".($b%$a)."<br>"; 
echo "power: ".($a**$b)."<br>";  
// Assignment
$x=$a;
echo "value of x: after Assign : ".$x."<br>";
$x+=$a;
echo "value of x: after Addition:  ".$x."<br>";
$x-=$a;
echo "value of x: after substraction :  ".$x."<br>";
$x*=$a;
echo "value of x: after multiply :  ".$x."<br>";
$x/=$a;
echo "value of x:after divide :  ".$x."<br>";
$x%=$a;
echo "value of x: after module :".$x."<br>";

// Comperision Operator
if ($a==$b){
    echo "both are equal<br>";}
else {
    echo "not equal<br>";
}
if ($a===$b){
    echo "both are equal<br>";}
else {
    echo "not equal<br>";
}
if ($a!=$b){
    echo "not  equal<br>";}
else {
    echo "equal equal<br>";
}
if ($a<>$b){
    echo "not  equal<br>";}
else {
    echo " equal<br>";
}
if ($a>$b){
    echo " A is greater than B <br>";}
else {
    echo "Ais not greater  than B <br>";
}
if ($a<$b){
    echo " A is less than B <br>";}
else {
    echo "Ais not less than B <br>";
}
if ($a>=$b){
    echo " A is greater than equal to  B <br>";}
else {
    echo "Ais not greater than equal to  B <br>";
}
if ($a<=$b){
    echo " A is less than equal to  B <br>";}
else {
    echo "Ais not less than equal to B <br>";
}
//

?>
