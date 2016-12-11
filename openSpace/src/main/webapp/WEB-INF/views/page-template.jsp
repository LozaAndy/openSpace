<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="resources/css/bootstrap.css" rel="stylesheet" />
<link href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
		<jsp:include page="${currentPage}"></jsp:include>
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
