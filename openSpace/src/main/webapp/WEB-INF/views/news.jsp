<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<div class="jumbotron">
			<h3>My news</h3>
			
			<!-- This link should be displayed only if current user is logged in -->
			<c:if test="${currentUser} != null">
			<a href ="/logout" class="text-right">Log out</a>
			</c:if>
			
		</div>
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">user_name</h3>
				</div>
				<div class="panel-body">
					<div class="col-lg-8">
						<hr>
						<!-- Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Andy <small>October 15, 2016 at 9:30 PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<hr>
						<!-- Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Andy <small>October 15, 2016 at 9:30 PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<hr>
						<!-- Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Andy <small>October 15, 2016 at 9:30 PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<hr>
						<div class="text-center">
							<nav aria-label="...">
								<ul class="pager">
									<li><a href="/previous-page">Previous</a></li>
									<li><a href="/next-page">Next</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-md-4">
						<div class="well">
							<img
								src="http://mama.darievna.ru/uploads/november-10/mini/75.jpg"
								alt="my photo" class="img-thumbnail">
						</div>
					</div>
					<div class="well">
						<div class="btn-group-vertical" role="group" aria-label="...">
							<button class="btn btn-primary btn-lg" data-toggle="modal"
								data-target="#myModal" type="submit">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								Add post
							</button>
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
											<h4 class="modal-title" id="myModalLabel">New post</h4>
										</div>
										<div class="modal-body">
											<span>Title</span> <input type="text" class="form-control"
												id="inputTitle" placeholder="">
											<hr>
											<form role="form">
												<div class="form-group">
													<textarea class="form-control" rows="3"></textarea>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Cancel</button>
											<button type="button" class="btn btn-primary">Save</button>
										</div>
									</div>
								</div>
							</div>
							<a href="/home" class="btn btn-info btn-lg" type="submit">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
								My profile
							</a>
							<a href="/friends" class="btn btn-success btn-lg" type="submit">
								<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
								My friends
							</a>
							<a href="/news" class="btn btn-warning btn-lg" type="submit">
								<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
								News
							</a>
							<a href="/settings" class="btn btn-default btn-lg" type="submit">
								<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
								Settings
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		