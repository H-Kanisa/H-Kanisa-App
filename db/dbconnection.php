<?php
$con = @mysqli_connect("localhost","root","",h-kanisa);
  if(!$con)
	  {
	  die(mysqli_connect_error($con));
	  }
mysqli_select_db($con,"h-kanisa");
?>