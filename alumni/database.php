<?php
$host = "localhost";
$username = "root";
$password = "mafia";
$dbname = "alumni";
$tblname = "admins";

$con = mysqli_connect("$host", "$username", "$password")or die("Cannot Connect");
mysqli_select_db($con, $dbname)or die("Cannot Select Database");

?>