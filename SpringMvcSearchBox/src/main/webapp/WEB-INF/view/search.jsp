<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
/* Styles for the button */
.round-btn {
	border-radius: 20px; /* Make the button round */
	padding: 10px 20px; /* Add padding for better appearance */
	border: none; /* Remove default button border */
	background-color: blue; /* Set the background color */
	color: white; /* Set the text color */
	cursor: pointer; /* Show pointer cursor on hover */
	transition: background-color 0.3s;
	/* Smooth transition for background color */
}

/* Hover effect */
.round-btn:hover {
	background-color: red; /* Change background color on hover */
}
</style>
</head>
<body>
	<h1
		style="text-align: center; margin-top: 10px; color: green; font-size: 20px;">
		<b><u>SearchBox</u></b>
	</h1>
	<form action="process1" method="post">
		<div
			style="text-align: center; margin-top: 10px; color: blue; font-size: 16px; width: 600px; margin: auto;">
			<div style="background-color: blue; padding: 10px;">
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="queryforSearch" rows="2"
					style="width: 450px; height: 50px; background-color: white; margin: auto;"></textarea>
			</div>
			<div style="margin-top: 10px;">
				<!-- Add buttons for Google and YouTube -->
				<button type="submit" name="action" class="round-btn">Search</button>
				<button type="submit" name="action" value="Google" class="round-btn">Google</button>
				<button type="submit" name="action" value="YouTube" class="round-btn">YouTube</button>
			</div>
		</div>
	</form>
</body>
</html>
</body>
</html>