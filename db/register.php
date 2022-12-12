<?php
    $db=mysqli_connect('localhost','root','', 'h-kanisa');
    if (!$db) {
        echo "Database connection failed";
    }

    $FName = $_POST['FName'];
    $MName = $_POST['MName'];

    $sql = "SELECT * FROM member_registration WHERE FName = '".$FName. "' MName = '".$MName:"' ";

    $result = mysqli_query($db,$sql);
    $count =  mysqli_num_rows($result);

if ($count==1){
    echo json_encode("Error");
}else{
    $insert = "INSERT INTO member_registration(FName,MName)VALUES('".$FName."','".$MName."',)";
    $query = mysqli_query($db,$insert);

    if($query){
        echo json_encode("Success");
    }
    }
?>