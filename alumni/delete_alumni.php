<?php
session_start();
include('database.php');
$username = $_POST['delete_id'];

if(isset($_POST['btndelete']))
{
	$query = "DELETE FROM employers_jobs WHERE alumnus_id = $username";
	mysqli_query($con, $query) or die('Error querying database.');
	$query = "DELETE FROM alumni WHERE alumnus_id = $username";
	mysqli_query($con, $query) or die('Error querying database.');
	$_SESSION['alert'] = "<div class='alert alert-success fade in'>
						<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
						<span class='glyphicon glyphicon-remove-sign'></span>&nbsp;<strong>Success: </strong><span>Successfully Delete.</span>
						</div>";
				header("location:dashboard.php");
}

?>