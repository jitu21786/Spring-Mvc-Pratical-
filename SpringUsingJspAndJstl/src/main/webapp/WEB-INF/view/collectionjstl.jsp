<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>List Data Traverse without jstl:--------- ${fruitData}</h3>
	<hr>

	<h3>List Data Traverse with jstl:---------</h3>
	<c:forEach var="listData" items="${ fruitData}">
		<c:out value="${listData}" />
		<br>
	</c:forEach>
	<hr>

	<h3>Map Data Traverse without jstl:--------- ${mapData}</h3>
	<hr>

	<h3>Map Data Traverse with jstl:---------</h3>
	<c:forEach var="mapData1" items="${mapData}">
		<c:out value="${mapData1.key}" />
		<c:out value="${mapData1.value}"/>
		<br>
	</c:forEach>
	<hr>

</body>
</html>