<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<div class="text-center">
				<h1>Hello, and Welcome!</h1>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary btn-lg"
					data-toggle="modal" data-target="#myModal">Click here to
					Login!</button>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title text-center" id="myModalLabel">Please
								enter your login and password :)</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="/social/login"
								method="post">
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
										<input type="password" class="form-control" id="inputPassword"
											placeholder="password">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<div class="checkbox">
											<label> <input type="checkbox"> Remember me
											</label>
										</div>
									</div>
								</div>
								<div class="form-group text-center">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit"
											class="btn btn-primary btn-default btn-block">Sign
											in</button>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<div class="text-center">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<a href="/social/reg" type="button" class="btn btn-success">Register
									now!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="navbar-fixed-bottom">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Andy_Loza :)</p>
				</div>
			</div>
			<!-- /.row -->
		</footer>
	</div>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>
