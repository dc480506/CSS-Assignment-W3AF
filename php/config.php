<?php
$servername="localhost";
$password="";
$username="root";
$dbname="w3aef";
$port="3306";
$conn = new mysqli($servername,$username,$password,$dbname,$port);
if($conn->connect_error)
{
	die("Connection: ".$conn->connect_error);
}?>