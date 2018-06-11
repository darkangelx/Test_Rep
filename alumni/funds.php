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

			<h4><strong>Donor Funds</strong></h4><br><br>
			<div class="table-responsive">       
				<table id="mytable" class="table datatable"> 
					<thead>
						<th>Donor Name</th>
						<th>Amount Donated</th>
						<th>Date Donated</th>
						<th>Type</th>
					</thead>
					<tbody>
					</div>
					<?php	
							$result = mysqli_query($con, "SELECT d.donor_name, d.amount, d.date_donated, d.fund_id, f.fund_name FROM donations d INNER JOIN funds f ON d.fund_id = f.fund_id");
							$count = mysqli_num_rows($result);
							if($count > 0)
							{
								while($row = mysqli_fetch_array($result))
								{
									?>
									<tr>
										<td><?php echo $row['donor_name']; ?></td>
										<td><?php echo $row['date_donated']; ?></td>
										<td><?php echo $row['amount']; ?></td>	
										<td><?php echo $row['fund_name']; ?></td>
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