<?php

include("dbconnection.php");
$con=dbconnection();

if(isset($_POST["FName"])){
    $first=$_POST["FName"]
}
else return;

if(isset($_POST["MName"])){
    $middle=$_POST["MName"]
}
else return;

if(isset($_POST["LName"])){
    $last=$_POST["LName"]
}
else return;

if(isset($_POST["Phone_Number"])){
    $phone=$_POST["Phone_Number"]
}
else return;

if(isset($_POST["DOB"])){
    $birthday=$_POST["DOB"]
}
else return;

if(isset($_POST["Love_Group"])){
    $cell=$_POST["Love_Group"]
}
else return;
if(isset($_POST["Zone"])){
    $zone=$_POST["Zone"]
}
else return;

if(isset($_POST["Church"])){
    $church=$_POST["Church"]
}
else return;

if(isset($_POST["Branch"])){
    $branch=$_POST["Branch"]
}
else return;


if(isset($_POST["City"])){
    $location=$_POST["City"]
}
else return;


include 'dbconnection.php';
$query ="INSERT INTO `member_registration`(`FName`,`MName`,`LName`,`Phone_Number`,`DOB`,`Love_Group`,`Zone`,`Church`,`Branch`,`City`)
VALUES ('$first','$middle','$last','$phone','$birthday','$first','$cell','$zone','$church','$branch','$location');

$exe=mysqli_query($con,$query);

$arr = [];
if($exe)
{
    $arr["success"]="true";
}
else
{
    $arr["success"]="false";
}

print(json_encode($arr));

?>
==========================================

