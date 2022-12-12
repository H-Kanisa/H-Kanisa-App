<?php 

$dns = 'mysql:host=https://h-kanisa.000webhostapp.com;dbname=id19727711_hkanisadb';
$user = 'hkanisa';
$pass = '}pfRSjwV]*ufMK8C';

try{
	$db = new PDO ($dns, $user, $pass);
	echo 'connected';
}

catch(PDOException $e){
	$error = $e->getMessage();
	echo $error;
}
