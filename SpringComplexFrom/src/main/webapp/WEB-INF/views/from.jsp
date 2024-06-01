<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Complex Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #FF3333;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background: white;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
	margin-bottom: 15px;
}

.radio-group, .checkbox-group {
	display: flex;
	align-items: center;
	gap: 10px;
}

.radio-group input, .checkbox-group input {
	margin-right: 5px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.form-group input, .form-group select, .form-group textarea {
	width: calc(100% - 20px);
	padding: 8px;
	margin: 0 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-group input[type="radio"], .form-group input[type="checkbox"] {
	width: auto;
}

.form-group .error {
	color: red;
	font-size: 0.9em;
}

button {
	padding: 10px 15px;
	background-color: #28a745;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Complex Form</h2>
		<div class="alert alert-danger" role="alert">
		 <form:errors path="st.*"/>
		</div>


		<form id="complexForm" action="process" method="POST">
			<div class="form-group">
				<label for="name">Full Name</label> <input type="text" id="name"
					name="name" required> <span class="error" id="nameError"></span>
			</div>
			<div class="form-group">
				<label for="email">Email Address</label> <input type="email"
					id="email" name="email" required> <span class="error"
					id="emailError"></span>
			</div>
			<div class="form-group">
				<label for="Id">ID</label> <input type="id" id="id" name="id"
					required> <span class="error" id="emailError"></span>
			</div>
			<div class="form-group">
				<label>Gender</label>
				<div class="radio-group">
					<input type="radio" id="male" name="gender" value="male" required>
					<label for="male">Male</label> <input type="radio" id="female"
						name="gender" value="female" required> <label for="female">Female</label>
				</div>
				<span class="error" id="genderError"></span>
			</div>
			<div class="form-group">
				<label for="hobbies">Hobbies</label>
				<div class="checkbox-group">
					<input type="checkbox" id="sports" name="hobbies" value="sports">
					<label for="sports">Sports</label> <input type="checkbox"
						id="reading" name="hobbies" value="reading"> <label
						for="reading">Reading</label> <input type="checkbox"
						id="travelling" name="hobbies" value="travelling"> <label
						for="travelling">Travelling</label>
				</div>
			</div>
			<div class="form-group">
				<label for="country">Country</label> <select id="country"
					name="country" required>
					<option value="">Select a country</option>
					<option value="us">United States</option>
					<option value="ca">Canada</option>
					<option value="uk">United Kingdom</option>
					<option value="au">Australia</option>
				</select> <span class="error" id="countryError"></span>
			</div>
			<div class="form-group">
				<label for="bio">Short Bio</label>
				<textarea id="bio" name="bio" rows="4" required></textarea>
				<span class="error" id="bioError"></span>
			</div>
			<div class="form-group">
				<label for="date">Date</label> <input type="text" id="date"
					name="date"> <span class="error" id="dateError"></span>
			</div>

			<div class="form-group">
				<label for="multiSelect">Select Courses</label> <select id="course"
					name="course" multiple required>
					<option value="java">JAVA</option>
					<option value="c++">C++</option>
					<option value="dsa">DSA</option>
					<option value="python">PYTHON</option>
				</select> <span class="error" id="multiSelectError"></span>
			</div>

			<div class="form-group">
				<label for="Enter city">Enter city</label> <input type="text"
					name="address.city" placeholder="Enter city Name here">
			</div>

			<div class="form-group">
				<label for="Enter state">Enter state</label> <input type="text"
					name="address.state" placeholder="Enter state Name here">
			</div>

			<button type="submit">Submit</button>
		</form>
	</div>

	<script>
		document
				.getElementById('complexForm')
				.addEventListener(
						'submit',
						function(event) {
							let valid = true;

							const name = document.getElementById('name').value;
							const email = document.getElementById('email').value;
							const gender = document
									.querySelector('input[name="gender"]:checked');
							const country = document.getElementById('country').value;
							const bio = document.getElementById('bio').value;

							// Reset previous errors
							document.getElementById('nameError').textContent = '';
							document.getElementById('emailError').textContent = '';
							document.getElementById('genderError').textContent = '';
							document.getElementById('countryError').textContent = '';
							document.getElementById('bioError').textContent = '';

							if (name.trim() === '') {
								valid = false;
								document.getElementById('nameError').textContent = 'Full Name is required.';
							}

							if (email.trim() === '') {
								valid = false;
								document.getElementById('emailError').textContent = 'Email Address is required.';
							}

							if (!gender) {
								valid = false;
								document.getElementById('genderError').textContent = 'Gender is required.';
							}

							if (country === '') {
								valid = false;
								document.getElementById('countryError').textContent = 'Country is required.';
							}

							if (bio.trim() === '') {
								valid = false;
								document.getElementById('bioError').textContent = 'Short Bio is required.';
							}

							if (!valid) {
								event.preventDefault();
							}
						});
	</script>
</body>
</html>