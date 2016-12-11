
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Hi, ${user.name}! </h3>
				</div>
				<div class="panel-body">
					<div class="col-lg-8">
						<!-- Blog Post -->
						<!-- Title -->
						<h1>My first post</h1>
						<!-- Author -->
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
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ut, tenetur natus doloremque laborum quos iste ipsum rerum
							obcaecati impedit odit illo dolorum ab tempora nihil dicta earum
							fugiat. Temporibus, voluptatibus.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Eos, doloribus, dolorem iusto blanditiis unde eius illum
							consequuntur neque dicta incidunt ullam ea hic porro optio
							ratione repellat perspiciatis. Enim, iure!</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Error, nostrum, aliquid, animi, ut quas placeat totam sunt
							tempora commodi nihil ullam alias modi dicta saepe minima ab quo
							voluptatem obcaecati?</p>
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
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
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
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
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
	