<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<style>
/* Style for form container */
.form-container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
}

/* Style for form labels */
.form-label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #333;
}

/* Style for form inputs */
.form-input {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

/* Style for checkboxes and radiobuttons */
.form-checkbox, .form-radio {
	margin-right: 5px;
}

/* Style for submit button */
.form-submit {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

/* Style for select dropdown */
.form-select {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

/* Style for form container title */
.form-title {
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
}
</style>
</head>
<body>
	<div class="form-container">
		<h3 class="form-title">Register Page!!!!!!</h3>
		<form:form action="modelClass" modelAttribute="student">
			<label class="form-label">Name is</label>
			<form:input class="form-input" path="name" />
			<br>
			<br>
			<label class="form-label">CheckBox</label>
			<label class="form-checkbox"><form:radiobutton path="gender"
					value="Male" /> Male</label>
			<label class="form-checkbox"><form:radiobutton path="gender"
					value="Female" /> Female</label>
			<br>
			<br>
			<label class="form-label">Password</label>
			<form:password class="form-input" path="password" />
			<br>
			<br>
			<label class="form-label">CheckBox</label>
			<label class="form-checkbox"><form:checkbox path="yes"
					value="jitu" /> Yes</label>
			<br>
			<br>
			<label class="form-label">Courses</label>
			<label class="form-checkbox"><form:checkbox path="course"
					value="Java" /> Java</label>
			<label class="form-checkbox"><form:checkbox path="course"
					value="Spring" /> Spring</label>
			<label class="form-checkbox"><form:checkbox path="course"
					value="Kotlin" /> Kotlin</label>
			<br>
			<br>
			<label class="form-label">Food</label>
			<form:select class="form-select" path="item">
				<form:option value="milk" /> Milk
				<form:option value="pepsi" /> Pepsi
				<form:option value="samosa" /> Samosa
			</form:select>
			<br>
			<br>
			<label class="form-label">Country</label>
			<form:checkboxes class="form-checkboxes" items="${list1}"
				path="country" />
			<br>
			<br>
			<label class="form-label">Fruit</label>
			<form:select class="form-select" path="fruit">
				<form:options items="${fruitData}" />
			</form:select>
			<br>
			<br>
			<label class="form-label">Gender</label>
			<form:radiobuttons class="form-radio" path="allGender"
				items="${genderAll }" />
			<br>
			<br>
			<input class="form-submit" type="submit">
		</form:form>
	</div>
</body>
</html>
