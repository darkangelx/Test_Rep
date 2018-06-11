<?php 
$con = mysqli_connect("localhost", "root", "mafia");
$db = mysqli_select_db($con, "alumni");

session_start();
$checkuser = $_SESSION['user'];
$session_sql = "SELECT admin_name, lastname, firstname from admins where admin_name = '$checkuser'";
$result = mysqli_query($con, $session_sql);
$row = mysqli_fetch_assoc($result);
$container = $row['admin_name'];

if(!isset($container))
{
	mysqli_close($con);
	header('location: dashboard.php');
}
mysqli_close($con);
?>