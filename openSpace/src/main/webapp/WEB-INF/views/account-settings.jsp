<!DOCTYPE html>
<html lang="en">
<head>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h3>My account</h3>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">User settings</h3>
					</div>
					<div class="panel-body">
						<table class="table table-hover text-center">
							<tr>
								<td class="active">First name</td>
								<td class="active">Hugh</td>
							</tr>
							<tr>
								<td class="active">Last name</td>
								<td class="active">Jackman</td>
							</tr>
							<tr>
								<td class="active">Email</td>
								<td class="active">Hugh.Jackman@gmail.com</td>
							</tr>
							<tr>
								<td class="active">Date of Birth</td>
								<td class="active">11.02.1973</td>
							</tr>
						</table>
						<div class="text-center">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">Edit</button>
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">Edit profile</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal">
												<div class="form-group">
													<label for="inputFirstName" class="col-sm-2 control-label">First
														name</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															id="inputFirstName" placeholder="first name">
													</div>
												</div>
												<div class="form-group">
													<label for="inputLastName" class="col-sm-2 control-label">Last
														name</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputLastName"
															placeholder="last name">
													</div>
												</div>
												<div class="form-group">
													<label for="inputLogin" class="col-sm-2 control-label">Login</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputLogin"
															placeholder="login">
													</div>
												</div>
												<div class="form-group">
													<label for="inputEmail" class="col-sm-2 control-label">Email</label>
													<div class="col-sm-10">
														<input type="email" class="form-control" id="inputEmail"
															placeholder="email">
													</div>
												</div>
												<div class="form-group">
													<label for="inputDate" class="col-sm-2 control-label">Date
														of Birth</label>
													<div class="col-sm-10">
														<input type="text" class="form-control" id="inputDate"
															placeholder="date of birth">
													</div>
												</div>
												<div class="form-group">
													<label for="inputPassword" class="col-sm-2 control-label">Password</label>
													<div class="col-sm-10">
														<input type="password" class="form-control"
															id="inputPassword" placeholder="password">
													</div>
												</div>
												<div class="form-group">
													<label for="inputConfirmPassword"
														class="col-sm-2 control-label">Confirm password</label>
													<div class="col-sm-10">
														<input type="password" class="form-control"
															id="inputPassword2" placeholder="confirm password">
													</div>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="well">
					<div class="well">
						<img src="http://mama.darievna.ru/uploads/november-10/mini/75.jpg"
							alt="" class="img-thumbnail">
					</div>
					<div class="row">
						<div class="col-lg-6">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-picture"></span> Change photo
							</button>
						</div>
					</div>
				</div>
				<div class="well">
					<div class="btn-group-vertical" role="group" aria-label="...">
						<a href="/social/home" class="btn btn-info btn-lg" type="submit">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							My profile
						</a>
						<a href="/social/friends" class="btn btn-success btn-lg" type="submit">
							<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
							My friends
						</a>
						<a href="/social/news" class="btn btn-warning btn-lg" type="submit">
							<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
							News
						</a>
						<a href="/social/settings" class="btn btn-default btn-lg" type="submit">
							<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
							Settings
						</a>
						<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="navbar-fixed-bottom">
		<div class="container">
			<p class="text-muted">Author: Andy Loza</p>
		</div>
	</footer>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>