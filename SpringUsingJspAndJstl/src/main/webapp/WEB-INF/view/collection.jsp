<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>collecting the Controller1 Data Using Expression Language</h3>

	<h3>List Data:------ ${listData}</h3>
	<hr>

	<h3>Date Data:------ ${dateprint}</h3>
	<hr>

	<h3>Student Data without Jstl:------ ${stObject.getId()}</h3>
	<hr>
	
	<h3>Student Data with Jstl:------ Trying to Print Using core tag</h3>
	
	<c:forEach var="stData" items="${stObject.getId()}">
	  <c:out value="${stData}"/><br>
	</c:forEach>
 	<hr>
	
</body>
</html>