<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container text-center mt-5">
		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-danger" role="alert">
					<h1 class="display-1">Error</h1>
					<p class="lead">Oops! Something went wrong.</p>
					<hr>
					<p><h4>${exception}</h4><br>pleasecontact support.</p>
					<a href="index.jsp" class="btn btn-primary">Go to Homepage</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
