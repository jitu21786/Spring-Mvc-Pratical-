<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Showing all the form data one by one</h4>
	<h3>Name is:- ${st.name}</h3>
	<h3>Email is:- ${st.email}</h3>
	<h3>ID is:- ${st.id}</h3>
	<h3>Gender is:- ${st.gender}</h3>
	<h3>hobbies is:-${st.hobbies}</h3>
	<h3>Country is:- ${st.country}</h3>
	<h3>Bio is:-${st.bio} </h3>
	<h3>Date is:- ${st.date}</h3>
	<h3>Course is:- ${st.course}</h3>
	<hr>

	<h3>cityName is :- ${st.address.city}</h3>
	<h3>State is:-  ${st.address.state}</h3>


</body>
</html>

