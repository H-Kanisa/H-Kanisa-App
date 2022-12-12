<?php
error_reporting(0) ;
ob_start();
session_start();
?>
<html>
  <head>
  <meta name="viewport" content=
		"width=device-width, initial-scale=1.0">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>
    <body>
      <div class="card" width:100%>
      <div style="border-radius:200px; height:200px; width:200px; background: #ea0000; margin:0 auto;">
      <h1> <i class="checkmark"><font color='white'>⚠</i>
      
      <br>

       </font></h1> 
     
  </div>
<?php

$phone=$_GET['phone'];
$amount=$_GET['amount'];

$amount=number_format($amount);
?>


        <p> 
        <font color='red' size='14'> <b>Error</b> </font></p>
        <br>
        </p><font color='green' size='6'> <br> <?php echo "Check if the Phone number $phone or amount $amount is correct"; ?></font></p>
 
        <br>
<hr>

<p align="center">Try again in <span id="counter">8</span> second(s).</p>
<script type="text/javascript">
function countdown() {
    var i = document.getElementById('counter');
    if (parseInt(i.innerHTML)<=1) {
        location.href = 'index.php';
    }
    i.innerHTML = parseInt(i.innerHTML)-1;
}
setInterval(function(){ countdown(); },1000);
</script>
<br>
<br>
<font size="1" face="roboto">
 <h3 align="center"> © <?php echo date("Y"); ?> HFC Store</h3>   
 
 </font>

                </div>

</font>

</body>

</html>
