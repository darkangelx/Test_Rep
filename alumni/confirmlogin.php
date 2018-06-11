<?php
include('database.php');
session_start();
$invalid = '';

if(isset($_POST['login']))
{
	$username = $_POST['user'];
	$password = $_POST['pass'];
	$username = mysqli_real_escape_string($con, $username);
	$password = mysqli_real_escape_string($con, $password);	

	$sql = mysqli_query($con, "SELECT * FROM admins WHERE admin_name = '$username' AND admin_password = '$password'");
	$count = mysqli_num_rows($sql);
				
	if($count == 1)
	{
		$_SESSION['user'] = $username;
		header("location: dashboard.php");	
	}
	else
	{
		$invalid =  "<div class='alert alert-danger fade in'>
						<button type = 'button' class = 'close' data-dismiss = 'alert' aria-hidden = 'true'>&times;</button>
						<strong>LOGIN FAILED: </strong><span> Username or Password is Incorrect! </span>
					</div>";
	}
	mysqli_close($con);
}
?>