<?php
//connect.php

function connect() {
	$server = "mysql.hostinger.dk";
	$username   = "USERNAME";
	$password   = "PASSWORD";
	$database   = "DATABASE";
	 
	$mysqllink = mysqli_connect($server, $username,  $password);
	 
	if(!$mysqllink)
	{
		exit('Error: could not establish database connection');
	}
	if(!mysqli_select_db($mysqllink, $database))
	{
		exit('Error: could not select the database');
	}
	return $mysqllink;
	
	var_dump($mysqllink);
}
?>