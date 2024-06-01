<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Home Page</title>
</head>
<body>
	<h4 class="text-center mt-2">
		<u>Signup Form</u></u>
	</h4>
	<div class="container mt-3">

		<form action="process" method="post">

			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">EmpId
				</label> <input type="text" class="form-control" id="empID"
					placeholder="Enter Here" name="id">

			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">UserName
				</label> <input type="text" class="form-control" id="userName"
					placeholder="Enter Here" name="fname">

			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Email
				</label> <input type="email" class="form-control" id="email"
					placeholder="abc@gmail.com" name="emailId">

			</div>

			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">password
				</label> <input type="password" class="form-control" id="password"
					placeholder="12345" name="pass">

			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary btn-lg">Submit</button>
			</div>
		</form>
	</div>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>