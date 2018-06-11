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

			<center><h4><strong>List of Alumni's </strong></h4></center><br><br>
			<div class="table-responsive">       
			<p data-placement="top" data-toggle="tooltip"><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#add" ><span class="fa fa-plus"></span> Add Alumni</button></p>
				<table id="mytable" class="table datatable"> 
					<thead>
						<th>Lastname</th>
						<th>Firstname</th>
						<th>Middlename</th>
						<th>Gender</th>
						<th>Address</th>
						<th>Course</th>
						<th>Year Graduate</th>
						<th>Edit</th>
						<th>Delete</th>
					</thead>
					<tbody>
					</div>
					<?php		
							$result = mysqli_query($con, "SELECT a.alumnus_id, a.last_name, a.first_name, a.middle_name, a.gender, a.phone_work, a.phone_home, a.email,a.address_code,a.street, a.city, p.degree_code, p.degree_desc, p.area_code, p.area_desc, yg.year FROM alumni a NATURAL JOIN programs p NATURAL JOIN year_graduated yg ORDER BY a.last_name");
							$count = mysqli_num_rows($result);
							if($count > 0)
							{
								while($row = mysqli_fetch_array($result))
								{
									$id=$row['alumnus_id'];
									?>
									<tr>
										<td><?php echo $row['last_name']; ?></td>
										<td><?php echo $row['first_name']; ?></td>
										<td><?php echo $row['middle_name']; ?></td>
										<td><?php echo $row['gender']; ?></td>
										<td><?php echo $row['address_code']. ' ' . $row['street']. ' ' . $row['city']?></td>
										<td><?php echo $row['degree_desc']. ' in ' . $row['area_desc'] .'('. $row['degree_code'] . $row['area_code'] .')'; ?></td>
										<td><?php echo $row['year']; ?></td>
										<td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit<?php echo $id?>" ><span class="glyphicon glyphicon-pencil"></span> Edit</button></p></td>
										<td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete<?php echo $id?>" ><span class="glyphicon glyphicon-trash"></span> Delete</button></p></td>	

										<div class="modal fade" id="edit<?php echo $id?>" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
														<h4 class="modal-title custom_align" id="Heading">Alumni ID: <?php echo $id?></h4>
													</div>
													<form action= "alumni_update.php" method="POST">
													<div class="col-md-6">
														<div class ="modal-body">
															<div class = "form-group">
																<label>Lastname</label>
																<input class = "form-control" type = "text" name = "lastname" value="<?php echo $row['last_name']?>" maxlength = "25" required>
																<input type ="hidden" name ="alumni_id" value="<?php echo $id?>">
															</div>
															<div class = "form-group">
																<label>Firstname</label>
																<input class = "form-control" type = "text" name = "firstname" value="<?php echo $row['first_name']?>" maxlength = "25" required>
															</div>
															<div class = "form-group">
																<label>Middlename</label>
																<input class = "form-control" type = "text" name = "middlename" value="<?php echo $row['middle_name']?>" maxlength = "10" required>
															</div>
															<div class = "form-group">
																<label>Gender</label>
																<select class ="form-control" name="gender">
																	<option value="Male">Male</option>
																	<option value="Female">Female</option>
																</select>
															</div>
															<div class = "form-group">
																<label>Email</label>
																<input class = "form-control" type = "text" name = "email" value="<?php echo $row['email']?>" maxlength = "50" required>
															</div>
															<div class = "form-group">
																<label>Telephone no. (HOME)</label>
																<input class = "form-control" type = "text" name = "p_home" value="<?php echo $row['phone_home']?>" maxlength = "11" required>
															</div>
														</div>
													</div>
													<div class="col-md-6">
														<div class ="modal-body">
															<div class = "form-group">
																<label>Office no.</label>
																<input class = "form-control" type = "text" name = "p_work" value="<?php echo $row['phone_work']?>" maxlength = "11" required>
															</div>
															<div class = "form-group">
																<label>House no.</label>
																<input class = "form-control" type = "text" name = "address_code" value="<?php echo $row['address_code']?>" maxlength = "25" required>
															</div>
															<div class = "form-group">
																<label>Street</label>
																<input class = "form-control" type = "text" name = "street" value="<?php echo $row['street']?>" maxlength = "50" required>
															</div>
															<div class = "form-group">
																<label>City</label>
																<input class = "form-control" type = "text" name = "city" value="<?php echo $row['city']?>" maxlength = "50" required>
															</div>
															<div class = "form-group">
																<label>Course</label>
																<select class ="form-control" name="course">
																<?php
																$query = mysqli_query($con, "SELECT * from programs");
																$count = mysqli_num_rows($query);
																if($count > 0)
																{
																	while($row = mysqli_fetch_array($query))
																	{
																		?>
																		
																			<option value="<?php echo $row['program_id']?>"><?php echo $row['degree_code']. '' .$row['area_code']?></option>
																		
																		<?php
																	}
																}
																?>
																</select>
															</div>
															<div class = "form-group">
																<label>Year Graduate</label>
																<select class ="form-control" name="year">
																<?php
																$query1 = mysqli_query($con, "SELECT * from year_graduated");
																$count1 = mysqli_num_rows($query1);
																if($count1 > 0)
																{
																	while($row1 = mysqli_fetch_array($query1))
																	{
																		?>
																		
																			<option value="<?php echo $row1['year_id']?>"><?php echo $row1['year']?></option>
																		
																		<?php
																	}
																}
																?>
																</select>
															</div>
														</div>
													</div>
													<div class="modal-footer ">
														<button type="submit" class="btn btn-danger btn-lg" style="width: 100%;" name = "btnupdate"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
													</div>
													</form>
												</div>
											<!-- /.modal-content --> 
											</div>
											  <!-- /.modal-dialog --> 
										</div>

										<div class="modal fade" id="delete<?php echo $id?>" tabindex="-1" role="dialog" aria-labelledby="delete" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
														<h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
													</div>
													<div class="modal-body">
													<form action = "delete_alumni.php" method = "POST">
														<input type = "hidden" name = "delete_id" value = "<?php echo $id?>">
															<div class="alert alert-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;&nbsp;Are you sure you want to delete <?php echo $row['last_name'] . ' ' . $row['first_name'] . '?'?></div>
														</div>
														<div class="modal-footer ">
															<button type="submit" class="btn btn-success" name = "btndelete"><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
															<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
														</div>
													</form>
												</div>
											<!-- /.modal-content --> 
											</div>
											  <!-- /.modal-dialog --> 
										</div>
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
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
				<h4 class="modal-title custom_align" id="Heading">Add Alumni</h4>
			</div>
			<form action= "insert_alumni.php" method="POST">
			<div class="col-md-6">
				<div class ="modal-body">
					<div class = "form-group">
						<label>Lastname</label>
						<input class = "form-control" type = "text" name = "lastname" value="" maxlength = "25" required autofocus>
					</div>
					<div class = "form-group">
						<label>Firstname</label>
						<input class = "form-control" type = "text" name = "firstname" value="" maxlength = "25" required>
					</div>
					<div class = "form-group">
						<label>Middlename</label>
						<input class = "form-control" type = "text" name = "middlename" value="" maxlength = "10" required>
					</div>
					<div class = "form-group">
						<label>Gender</label>
						<select class ="form-control" name="gender">
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
					<div class = "form-group">
						<label>Email</label>
						<input class = "form-control" type = "text" name = "email" value="" maxlength = "50" required>
					</div>
					<div class = "form-group">
						<label>Telephone no. (HOME)</label>
						<input class = "form-control" type = "text" name = "p_home" value="" maxlength = "11" required>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class ="modal-body">
					<div class = "form-group">
						<label>Office no.</label>
						<input class = "form-control" type = "text" name = "p_work" value="" maxlength = "11" required>
					</div>
					<div class = "form-group">
						<label>House no.</label>
						<input class = "form-control" type = "text" name = "address_code" value="" maxlength = "25" required>
					</div>
					<div class = "form-group">
						<label>Street</label>
						<input class = "form-control" type = "text" name = "street" value="" maxlength = "50" required>
					</div>
					<div class = "form-group">
						<label>City</label>
						<input class = "form-control" type = "text" name = "city" value="" maxlength = "50" required>
					</div>
					<div class = "form-group">
						<label>Course</label>
						<select class ="form-control" name="course">
						<?php
						$query2 = mysqli_query($con, "SELECT * from programs");
						$count2 = mysqli_num_rows($query2);
						if($count2 > 0)
						{
							while($row2 = mysqli_fetch_array($query2))
							{
								?>
								
									<option value="<?php echo $row2['program_id']?>"><?php echo $row2['degree_code']. '' .$row2['area_code']?></option>
								
								<?php
							}
						}
						?>
						</select>
					</div>
					<div class = "form-group">
						<label>Year Graduate</label>
						<select class ="form-control" name="year">
						<?php
						$query3 = mysqli_query($con, "SELECT * from year_graduated");
						$count3 = mysqli_num_rows($query3);
						if($count3 > 0)
						{
							while($row3 = mysqli_fetch_array($query3))
							{
								?>
								
									<option value="<?php echo $row3['year_id']?>"><?php echo $row3['year']?></option>
								
								<?php
							}
						}
						?>
						</select>
					</div>
				</div>
			</div>
			<div class="modal-footer ">
				<button type="submit" class="btn btn-danger btn-lg" style="width: 100%;" name = "btninsert"><span class="glyphicon glyphicon-ok-sign"></span> Insert</button>
			</div>
			</form>
		</div>
	<!-- /.modal-content --> 
	</div>
	  <!-- /.modal-dialog --> 
</div>

</body>
</html>
<script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>  