<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<form class="form-horizontal" action="/login" method="post">
						<div class="form-group">
							<label for="inputLogin" class="col-sm-2 control-label">Login</label>
							<div class="col-sm-10">
								<input type="text" name="inputLogin" class="form-control"
									id="inputLogin" placeholder="login">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" name="inputPassword" class="form-control"
									id="inputPassword" placeholder="password">
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
									class="btn btn-primary btn-default btn-block">Sign in</button>
							</div>
						</div>
					</form>
				</div>

				<div class="modal-footer">
					<div class="text-center">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<a href="/reg" type="button" class="btn btn-success">Register
							now!</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<c:if test="${validationError != null}">
	<div class="alert alert-danger" role="alert">
		<p>${validationError}</p>
		>
	</div>
</c:if>
