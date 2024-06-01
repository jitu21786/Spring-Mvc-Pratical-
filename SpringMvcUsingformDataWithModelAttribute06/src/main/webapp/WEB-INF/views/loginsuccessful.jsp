<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

${successful}
</head>
<body>
	<h3>getting value using variable name present in the Emp class</h3>
	<h3>id is-------> ${em.id}</h3>
	<h3>name is-------> ${em.name}</h3>
	<hr>
	<h3>getting value using getter method present in the Emp class</h3>
	<h3>id is-------> ${em.getId()}</h3>
	<h3>name is-------> ${em.getName()}</h3>

</body>
</html>