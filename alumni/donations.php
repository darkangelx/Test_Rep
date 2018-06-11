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

			<h4><strong>Donations over 20000</strong></h4><br><br>
			<div class="table-responsive">       
				<table id="mytable" class="table table-bordred table-striped"> 
					<thead>
						<th>Corporate Donor</th>
						<th>Total Donation</th>
					</thead>
					<tbody>
					</div>
					<?php	
							$result = mysqli_query($con, "SELECT donor_name, SUM(amount) amount
				FROM donations
				GROUP BY donor_name
				HAVING amount > 20000
				ORDER BY amount DESC");
							$count = mysqli_num_rows($result);
							if($count > 0)
							{
								while($row = mysqli_fetch_array($result))
								{
									?>
									<tr>
										<td><?php echo $row['donor_name']; ?></td>
										<td><?php echo $row['amount']; ?></td>
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