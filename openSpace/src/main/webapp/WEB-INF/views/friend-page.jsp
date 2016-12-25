<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">

			<!-- This header should display name of friend  -->

			<h3 class="panel-title">${user.name}</h3>
			
			<!-- This link should be displayed only if current user is logged in -->
			<c:if test="${currentUser} != null">
			<a href ="/logout" class="text-right">Log out</a>
			</c:if>

		</div>
		<div class="panel-body">
			<div class="col-lg-8">

				<!-- Blog Post - only posts of current friend -->

				<!-- Title -->
				<h1>My first post</h1>

				<p class="lead">
					by <a href="#">Andy</a>
				</p>
				<hr>
				<!-- Date/Time -->
				<p>
					<span class="glyphicon glyphicon-time"></span> Posted on October
					15, 2016 at 17:00 PM
				</p>
				<hr>
				<!-- Preview Image -->
				<img class="img-responsive"
					src="https://friends-brandmanualswede.netdna-ssl.com/wp-content/uploads/2014/09/friends-storre.png"
					alt="">
				<hr>
				<!-- Post Content -->
				<p class="lead">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Ducimus, vero, obcaecati, aut, error quam
					sapiente nemo saepe quibusdam sit excepturi nam quia corporis
					eligendi eos magni recusandae laborum minus inventore?</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut,
					tenetur natus doloremque laborum quos iste ipsum rerum obcaecati
					impedit odit illo dolorum ab tempora nihil dicta earum fugiat.
					Temporibus, voluptatibus.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Eos, doloribus, dolorem iusto blanditiis unde eius illum
					consequuntur neque dicta incidunt ullam ea hic porro optio ratione
					repellat perspiciatis. Enim, iure!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Error, nostrum, aliquid, animi, ut quas placeat totam sunt tempora
					commodi nihil ullam alias modi dicta saepe minima ab quo voluptatem
					obcaecati?</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Harum, dolor quis. Sunt, ut, explicabo, aliquam tenetur ratione
					tempore quidem voluptates cupiditate voluptas illo saepe quaerat
					numquam recusandae? Qui, necessitatibus, est!</p>
				<hr>
				<!-- Blog Comments -->
				<!-- Comments Form -->
				<div class="well">
					<h4>Leave a Comment:</h4>
					<form role="form">
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
				<hr>
				<!-- Posted Comments -->
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
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>
				<!-- Comment -->
				<div class="media">
					<a class="pull-left" href="#"> <img class="media-object"
						src="http://placehold.it/64x64" alt="">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							Andy <small>October 15, 2016 at 9:35 PM</small>
						</h4>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
						<!-- Nested Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Andy <small>October 15, 2014 at 9:48 PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<!-- End Nested Comment -->
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="well">
					<img src="http://mama.darievna.ru/uploads/november-10/mini/75.jpg"
						alt="my photo" class="img-thumbnail">
				</div>
			</div>
			<div class="well">
				<div class="btn-group-vertical" role="group" aria-label="...">
										
					<!-- On friend's page guest user can't add a new post - only comments -->
					
					<a href="/home" class="btn btn-info btn-lg" type="submit"> <span
						class="glyphicon glyphicon-user" aria-hidden="true"></span> My
						profile
					</a> <a href="/friends" class="btn btn-success btn-lg" type="submit">
						<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
						My friends
					</a> <a href="/news" class="btn btn-warning btn-lg" type="submit">
						<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
						News
					</a> <a href="/settings" class="btn btn-default btn-lg" type="submit">
						<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
						Settings
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
