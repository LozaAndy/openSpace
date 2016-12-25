<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="jumbotron">
	<h3>My friends</h3>
	
	<!-- This link should be displayed only if current user is logged in -->
			<c:if test="${currentUser} != null">
			<a href ="/logout" class="text-right">Log out</a>
			</c:if>
</div>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">All friends</h3>
			</div>
			<div class="panel-body text-center">
				<ul class="caption-style-1">
					<li><a href="/friend?${user.id}"><img
							src="http://content.screencast.com/users/Andy968574/folders/Jing/media/c6cbe9d3-608c-4bb6-a01d-0a06b921fabc/2016-10-22_1106.png"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Sanghee</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/krutye/140/3.jpg" alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Will</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://moonstudiosm.com/wp-content/img/2012/08/%D0%90%D0%B2%D0%B0%D1%82%D0%B0%D1%80-%D0%B4%D0%B5%D0%B2%D1%83%D1%88%D0%BA%D0%B0-%D0%BF%D1%80%D1%8F%D1%87%D0%B5%D1%82%D1%81%D1%8F-%D0%B7%D0%B0-%D0%BB%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%BE%D0%BC.gif"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Jessica</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/animirovannye/140/21.gif"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Tessa</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/devushki/140/50.gif" alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Hellen</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/sharji-na-zvezd/140/36.jpg"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Tom</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/animirovannye/140/18.gif"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Emilia</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/animirovannye/140/16.gif"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Norman</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://images.vfl.ru/ii/1369823615/8d246496/2432191_m.png"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Dyn</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://img-fotki.yandex.ru/get/6736/149341859.20/0_125867_d895c4a8_orig"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Mirta</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://img-fotki.yandex.ru/get/6736/149341859.20/0_125867_d895c4a8_orig"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Elza</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/iz-multfilmov/140/110.jpg"
							alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Tom</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/emo/140/35.jpg" alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Anton</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/deti/140/60.jpg" alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Sofie :)</h1>
							</div>
						</div></li>
					<li><a href="/friend?${user.id}"><img
							src="http://pikchyriki.net/avatar/znamenitosti/140/3.jpg" alt=""></a>
						<div class="caption">
							<div class="blur"></div>
							<div class="caption-text">
								<h1>Kira</h1>
							</div>
						</div></li>
				</ul>
			</div>
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
			<div class="well">
				<img src="http://mama.darievna.ru/uploads/november-10/mini/75.jpg"
					alt="" class="img-thumbnail">
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="well">
						<div class="btn-group-vertical" role="group" aria-label="...">
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
	</div>
</div>

