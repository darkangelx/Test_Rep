<?php 
include('user_session.php');
include('navbar.php');
include('database.php');

 ?>

<html>
<head>
	<title>STI ALUMNI</title>
</head>
<body>
<div class="container">
	<div class="row">    
        <div class="col-md-12">
			<?php
			if(isset($_SESSION['alert']))
			{
				echo $_SESSION['alert'];
				unset($_SESSION['alert']);
			}			
			?>

			<h4><strong>Alumni Employers</strong></h4><br><br>
			<div class="table-responsive">       
				<table id="mytable" class="table datatable"> 
					<thead>
						<th>Fullname</th>
						<th>Job Title</th>
						<th>Company name</th>
						<th>Date Joined</th>
						<th>Date Left</th>
					</thead>
					<tbody>
					</div>
					<?php		
							$result = mysqli_query($con, "SELECT a.last_name, a.first_name, a.middle_name, ej.date_joined, ej.job_title, ej.employer_name, ej.date_joined, ej.date_left
					FROM alumni a NATURAL JOIN employers_jobs ej");
							$count = mysqli_num_rows($result);
							if($count > 0)
							{
								while($row = mysqli_fetch_array($result))
								{
									?>
									<tr>
										<td><?php echo $row['last_name']. ', ' .$row['first_name']. ' ' .$row['middle_name']; ?></td>
										<td><?php echo $row['job_title']; ?></td>
										<td><?php echo $row['employer_name']; ?></td>
										<td><?php echo $row['date_joined']; ?></td>
										<td><?php echo $row['date_left']; ?></td>	
									</tr>
									<?php
								}	
							}
							?>

					</tbody>    
				</table>
			</div>       
        </div>
	</div>
</div>

</body>
</html>
<script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>  