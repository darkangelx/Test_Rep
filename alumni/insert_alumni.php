<?php
session_start();
include('database.php');

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

$sql1 = "SELECT last_name, first_name, middle_name from alumni where last_name = '$lastname' AND first_name = '$firstname' AND middle_name = '$middlename'";
$result = mysqli_query($con, $sql1);
$count = mysqli_num_rows($result);
if($count == 1)
{
	$_SESSION['alert'] = "<div class='alert alert-danger fade in'>
					<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					<span class='glyphicon glyphicon-remove-sign'></span>&nbsp;<strong>Error!: </strong><span>Name Already Exist</span>
					</div>";
			header("location:dashboard.php");	
}
else
{
	$sql = "INSERT into alumni (last_name, first_name, middle_name, gender, email, address_code, street, city, phone_work, phone_home, program_id, year_id)values('$lastname', '$firstname', '$middlename', '$gender', '$email', '$address_code', '$street', '$city', '$p_work', '$p_home', '$course', '$year')";
	$result2 = mysqli_query($con, $sql);
	if($result2 > 0)
	{
		$_SESSION['alert'] = "<div class='alert alert-success fade in'>
				<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
				<span class='fa fa-check'></span>&nbsp;<strong>Information: </strong><span>Successfully Saved.</span>
				</div>";
		header("location:dashboard.php");			
	}
	else
	{
		$_SESSION['alert'] = "<div class='alert alert-danger fade in'>
				<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
				<span class='glyphicon glyphicon-remove-sign'></span>&nbsp;<strong>Error!: </strong><span>Error</span>
				</div>";
		header("location:dashboard.php");
	}
}
?>