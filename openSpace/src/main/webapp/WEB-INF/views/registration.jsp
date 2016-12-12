
		<div class="jumbotron text-center">
			<div class="media">
				<div class="media-left">
					<a href="#"> <img class="media-object" data-toggle="modal"
						data-target=".bs-example-modal-sm"
						src="https://pp.vk.me/c616022/v616022447/148b7/RNbk3sDNNXo.jpg"
						alt="">
					</a>
					<div class="modal fade bs-example-modal-sm" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content">
								<h2>Nice to meet you! :)</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="media-body">
					<h2>Please, enter information about you :)</h2>

				</div>
			</div>
		</div>
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">All fields are required</h3>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="/reg/confirm" method="post">
					<div class="form-group">
						<label for="inputLogin" class="col-sm-2 control-label">Login</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputLogin"
								placeholder="login">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword1"
								placeholder="password">
						</div>
					</div>
					<div class="form-group">
						<label for="inputConfPassword" class="col-sm-2 control-label">Confirm
							password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inputPassword2"
								placeholder="password">
						</div>
					</div>
					<div class="form-group">
						<label for="inputFirstName" class="col-sm-2 control-label">First
							Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputFirstName"
								placeholder="first name">
						</div>
					</div>
					<div class="form-group">
						<label for="inputLastName" class="col-sm-2 control-label">Last
							Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputLastName"
								placeholder="last name">
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
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">Registrate!</button>
							<button type="button" class="btn btn-default">Cancel</button>
						</div>
					</div>
					<div class="form-group"></div>
				</form>
			</div>
		</div>
		