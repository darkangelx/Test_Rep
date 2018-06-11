<?php
session_start();
include('database.php');

/*
$id = $_POST['alumni_id'];
$lastname = $_POST['lastname'];
$firstname =  $_POST['firstname'];
$middlename = $_POST['middlename'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$p_home = $_POST['p_home'];
$p_work = $_POST['p_work'];
$address_code = $_POST['address_code'];
$street = $_POST['street'];
$city = $_POST['city'];
$course = $_POST['course'];
$year = $_POST['year'];

$sql = "UPDATE alumni SET last_name = '$lastname',
first_name = '$firstname',
middle_name = '$middlename',
gender = '$gender',
email = '$email',
address_code = '$address_code',
street = '$street',
city = '$city',
phone_work = '$p_work',
phone_home = '$p_home',
program_id = '$course',
year_id = '$year' 
WHERE almunus_id = '$id'";

if(isset($_POST['btnupdate']))
{
	if(mysqli_query($con, $sql))
	{
		$_SESSION['alert'] = "<div class='alert alert-success fade in'>
						<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						<span class='fa fa-check'></span>&nbsp;<strong>Information: </strong><span>Successfully Update!.</span>
						</div>";
				header("location:dashboard.php");	
	}		
}
*/

	echo 'update';

?>